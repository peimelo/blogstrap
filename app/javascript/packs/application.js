// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
require('@popperjs/core');

import * as ActiveStorage from '@rails/activestorage';
import Rails from '@rails/ujs';
import { Tooltip } from 'bootstrap';
import 'channels';
import Turbolinks from 'turbolinks';
import '../stylesheets/application';

document.addEventListener('turbolinks:load', () => {
  var tooltipTriggerList = [].slice.call(
    document.querySelectorAll('[data-bs-toggle="tooltip"]')
  );
  var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
    return new Tooltip(tooltipTriggerEl);
  });
});

Rails.start();
Turbolinks.start();
ActiveStorage.start();
