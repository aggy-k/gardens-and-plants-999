// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "bootstrap";
import { initTomSelect } from './plugins/init-tom-select';

document.addEventListener('turbo:load', () => {
  initTomSelect();
})
