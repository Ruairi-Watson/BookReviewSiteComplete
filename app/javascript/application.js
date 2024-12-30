// Entry point for the build script in your package.json
import { Turbo } from "@hotwired/turbo-rails";
import Rails from "@rails/ujs";
Rails.start();
Turbo.session.drive = true;

// Controllers (Stimulus)
import "./controllers";

// Bootstrap (Optional)
import * as bootstrap from "bootstrap";

// Prevent forms from submitting twice by disabling buttons
document.addEventListener("turbo:submit-start", function (event) {
  const submitButton = event.target.querySelector("input[type='submit'], button[type='submit']");
  if (submitButton) {
    submitButton.disabled = true;
  }
});
