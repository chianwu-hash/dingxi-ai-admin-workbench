(function () {
  function copyText(text) {
    if (navigator.clipboard && navigator.clipboard.writeText) {
      return navigator.clipboard.writeText(text).catch(function () {
        return copyTextWithTextarea(text);
      });
    }

    return copyTextWithTextarea(text);
  }

  function copyTextWithTextarea(text) {
    var textarea = document.createElement("textarea");
    textarea.value = text;
    textarea.setAttribute("readonly", "");
    textarea.style.position = "fixed";
    textarea.style.left = "-9999px";
    document.body.appendChild(textarea);
    textarea.select();

    try {
      document.execCommand("copy");
      return Promise.resolve();
    } catch (error) {
      return Promise.reject(error);
    } finally {
      document.body.removeChild(textarea);
    }
  }

  function setTemporaryLabel(button, label) {
    var original = button.getAttribute("data-original-label") || button.textContent;
    button.setAttribute("data-original-label", original);
    button.textContent = label;
    window.setTimeout(function () {
      button.textContent = original;
    }, 1800);
  }

  document.addEventListener("click", function (event) {
    var button = event.target.closest("[data-copy-prompt]");
    if (!button) {
      return;
    }

    var box = button.closest(".prompt-box");
    var code = box && box.querySelector("code");
    if (!code) {
      setTemporaryLabel(button, "找不到內容");
      return;
    }

    copyText(code.innerText).then(function () {
      setTemporaryLabel(button, "已複製");
    }).catch(function () {
      setTemporaryLabel(button, "複製失敗");
    });
  });
})();
