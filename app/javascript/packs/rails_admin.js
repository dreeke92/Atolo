import "rails_admin/src/rails_admin/base";
import "../stylesheets/rails_admin.scss";

// Here is the code for JS admin
var Trix = require("trix");

/* what the newly created button does */
Trix.config.textAttributes.green = {
    style: { color: "#8dc73d" },
    parser: function(element) {
        return element.style.color === "#8dc73d"
    },
    inheritable: true
}

/* insert the button visual in the default toolbar */
addEventListener("trix-initialize", function(event) {
    var buttonHTML = '<button type="button" class="trix-button" data-trix-attribute="green">Green</button>'

    event.target.toolbarElement.
    querySelector(".trix-button-group").
    insertAdjacentHTML("beforeend", buttonHTML)
})
