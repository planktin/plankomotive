!function(i){"use strict";function s(t){var o=t.attr("data-target");o||(o=(o=t.attr("href"))&&/#[A-Za-z]/.test(o)&&o.replace(/.*(?=#[^\s]*$)/,""));var e=o&&i(o);return e&&e.length?e:t.parent()}function a(n){n&&3===n.which||(i(o).remove(),i(p).each(function(){var t=i(this),o=s(t),e={relatedTarget:this};o.hasClass("open")&&(n&&"click"==n.type&&/input|textarea/i.test(n.target.tagName)&&i.contains(o[0],n.target)||(o.trigger(n=i.Event("hide.bs.dropdown",e)),n.isDefaultPrevented()||(t.attr("aria-expanded","false"),o.removeClass("open").trigger("hidden.bs.dropdown",e))))}))}function t(e){return this.each(function(){var t=i(this),o=t.data("bs.dropdown");o||t.data("bs.dropdown",o=new n(this)),"string"==typeof e&&o[e].call(t)})}var o=".dropdown-backdrop",p='[data-toggle="dropdown"]',n=function(t){i(t).on("click.bs.dropdown",this.toggle)};n.VERSION="3.3.5",n.prototype.toggle=function(t){var o=i(this);if(!o.is(".disabled, :disabled")){var e=s(o),n=e.hasClass("open");if(a(),!n){"ontouchstart"in document.documentElement&&!e.closest(".navbar-nav").length&&i(document.createElement("div")).addClass("dropdown-backdrop").insertAfter(i(this)).on("click",a);var r={relatedTarget:this};if(e.trigger(t=i.Event("show.bs.dropdown",r)),t.isDefaultPrevented())return;o.trigger("focus").attr("aria-expanded","true"),e.toggleClass("open").trigger("shown.bs.dropdown",r)}return!1}},n.prototype.keydown=function(t){if(/(38|40|27|32)/.test(t.which)&&!/input|textarea/i.test(t.target.tagName)){var o=i(this);if(t.preventDefault(),t.stopPropagation(),!o.is(".disabled, :disabled")){var e=s(o),n=e.hasClass("open");if(!n&&27!=t.which||n&&27==t.which)return 27==t.which&&e.find(p).trigger("focus"),o.trigger("click");var r=" li:not(.disabled):visible a",a=e.find(".dropdown-menu"+r);if(a.length){var d=a.index(t.target);38==t.which&&0<d&&d--,40==t.which&&d<a.length-1&&d++,~d||(d=0),a.eq(d).trigger("focus")}}}};var e=i.fn.dropdown;i.fn.dropdown=t,i.fn.dropdown.Constructor=n,i.fn.dropdown.noConflict=function(){return i.fn.dropdown=e,this},i(document).on("click.bs.dropdown.data-api",a).on("click.bs.dropdown.data-api",".dropdown form",function(t){t.stopPropagation()}).on("click.bs.dropdown.data-api",p,n.prototype.toggle).on("keydown.bs.dropdown.data-api",p,n.prototype.keydown).on("keydown.bs.dropdown.data-api",".dropdown-menu",n.prototype.keydown)}(jQuery);