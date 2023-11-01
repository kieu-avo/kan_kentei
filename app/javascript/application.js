// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "./controllers";
import "@fortawesome/fontawesome-free/js/all";
import $ from "jquery";
import "./raty";
import "./reviews"
window.$ = $;
window.jQuery = $;