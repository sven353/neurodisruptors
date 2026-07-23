// Mobile nav toggle + "More" dropdown — shared across all pages
document.addEventListener("DOMContentLoaded", function () {
  var toggle = document.querySelector(".nav-toggle");
  var links = document.querySelector(".nav-links");
  if (toggle && links) {
    toggle.addEventListener("click", function () {
      links.classList.toggle("open");
    });
  }

  var ddToggle = document.querySelector(".dropdown-toggle");
  var ddMenu = document.querySelector(".dropdown-menu");
  if (ddToggle && ddMenu) {
    ddToggle.addEventListener("click", function (e) {
      e.stopPropagation();
      var isOpen = ddMenu.classList.toggle("open");
      ddToggle.setAttribute("aria-expanded", isOpen ? "true" : "false");
    });
    document.addEventListener("click", function (e) {
      if (!ddMenu.contains(e.target) && e.target !== ddToggle) {
        ddMenu.classList.remove("open");
        ddToggle.setAttribute("aria-expanded", "false");
      }
    });
    document.addEventListener("keydown", function (e) {
      if (e.key === "Escape") {
        ddMenu.classList.remove("open");
        ddToggle.setAttribute("aria-expanded", "false");
      }
    });
  }
});
