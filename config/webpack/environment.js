const { environment } = require('@rails/webpacker');

const webpack = require('webpack');

environment.plugins.append(
  'Provide',
  new webpack.ProvidePlugin({
    Popper: ['popper.js', 'default'], // Not a typo, we're still using popper.js here
  })
);

module.exports = environment;
