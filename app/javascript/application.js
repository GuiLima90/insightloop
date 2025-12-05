// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

// === HIGHLIGHT FUNCTION ===

function highlightConversationSearch() {
  const input = document.getElementById("conversationSearchInput");
  if (!input) return;

  const query = input.value.trim().toLowerCase();
  const bubbles = document.querySelectorAll(".chat-bubble");

  bubbles.forEach(bubble => {
    const original = bubble.getAttribute("data-original") || bubble.innerHTML;

    if (!bubble.getAttribute("data-original")) {
      bubble.setAttribute("data-original", original);
    }

    if (query === "") {
      bubble.innerHTML = original;
      return;
    }

    const regex = new RegExp(`(${query})`, "gi");

    bubble.innerHTML = original.replace(regex, `<mark class="search-highlight">$1</mark>`);
  });
}

window.highlightConversationSearch = highlightConversationSearch;
