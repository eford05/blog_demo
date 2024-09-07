import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  initialize() {}
  connect() {}
  toggleForm(event) {
    1;
    event.preventDefault();
    event.stopPropagation();
    const formID = event.params["form"];
    const commentBodyID = event.params["body"];
    const form = document.getElementById(formID);
    const commentBody = document.getElementById(commentBodyID);

    form.classList.toggle("d-none");
    form.classList.toggle("mt-5");
    commentBody.classList.toggle("d-none");
  }
}
