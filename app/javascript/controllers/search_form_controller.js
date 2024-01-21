import { Controller } from "@hotwired/stimulus"

const RECORDED_INPUT= 'confirmed-input';
const DATA_INPUT = 'query';

export default class extends Controller {
  connect() {
    const dataInput = document.getElementById(
      DATA_INPUT
    );

    const recorderdInput = document.getElementById(
      RECORDED_INPUT
    ); 
    
    dataInput.addEventListener("focusout", () => {
      recorderdInput.value = true;
      this.element.requestSubmit();
    });

    dataInput.addEventListener("focusin", () => {
      recorderdInput.value = null;
    });
  }
  
  search() {
    clearTimeout(this.timeout);

    this.timeout = setTimeout(() => {
      this.element.requestSubmit();
    }, 300);
  }
}