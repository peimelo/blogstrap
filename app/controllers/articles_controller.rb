class ArticlesController < ApplicationController
  include Paginable

  before_action :authenticate_user!, except: %i[index show]
  before_action :set_article, only: %i[edit update destroy]
  before_action :set_categories, only: %i[index new create edit update]

  # rubocop: disable Metrics/AbcSize, Metrics/MethodLength
  def index
    @archives = Article.group_by_month(:created_at, format: '%B %Y', locale: :en).count

    category = @categories.find { |c| c.name == params[:category] } if params[:category].present?
    month_year = @archives.find { |m| m[0] == params[:month_year] }&.first if params[:month_year].present?

    @highlights = Article.includes(:category, :user)
                         .filter_by_category(category)
                         .filter_by_archive(month_year)
                         .desc_order
                         .first(3)

    highlight_ids = @highlights.pluck(:id).join(',')

    @articles = Article.includes(:category, :user)
                       .without_highlights(highlight_ids)
                       .filter_by_category(category)
                       .filter_by_archive(month_year)
                       .desc_order
                       .page(current_page)
  end

  # rubocop: enable Metrics/AbcSize, Metrics/MethodLength
  def show
    @article = Article.includes(comments: :user).find(params[:id])
    authorize @article
  end

  def new
    @article = current_user.articles.new
  end

  def create
    @article = current_user.articles.new(article_params)

    if @article.save
      redirect_to @article, notice: t('.success')
    else
      render :new
    end
  end

  def edit; end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: t('.success')
    else
      render :edit
    end
  end

  def destroy
    @article.destroy

    redirect_to root_path, notice: t('.success')
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :category_id)
  end

  def set_article
    @article = Article.find(params[:id])
    authorize @article
  end

  def set_categories
    @categories = Category.sorted
  end
end
