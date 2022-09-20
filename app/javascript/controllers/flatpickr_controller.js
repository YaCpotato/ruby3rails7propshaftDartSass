import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
 
export default class extends Controller {
  static targets = [ "output" ]

  connect() {
    console.log('Controller', this.element)
    var config = { dateFormat: "Y-m-d" }
    flatpickr(this.element, config);
  }
}