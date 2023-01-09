// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import {Turbo} from "@hotwired/turbo-rails"
import "controllers"
import  "jquery"
import  * as M from "materialize"
import "./materializeEvents"
Turbo.session.drive = false

