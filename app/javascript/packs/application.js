// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"

Rails.start()
Turbolinks.start()

require('jquery')
require('jquery-ui')
require("jquery-ui/ui/widgets/autocomplete");

require("admin-lte")

require("moment/locale/ja")
require("tempusdominus-bootstrap-4")
require("select2")

global.toastr = require("toastr")
import 'bootstrap'
import "../stylesheets/application"

import "@fortawesome/fontawesome-free/js/all";

import 'jquery-ui/themes/base/core.css';
import 'jquery-ui/themes/base/menu.css';
import 'jquery-ui/themes/base/autocomplete.css';
import 'jquery-ui/themes/base/theme.css';
