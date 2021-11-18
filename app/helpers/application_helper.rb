module ApplicationHelper
  def month_day_comma_year(datetime)
    l(datetime, format: '%B %e, %Y').capitalize
  end

  def render_if(condition, template, record)
    render template, record if condition
  end

  def sub_masked_email(email)
    email.gsub(/(?<=.{2}).*@.*(?=\S{2})/, '****@****')
  end
end
