(() => {
  document.querySelectorAll("img[data-official-asset]").forEach((img) => {
    const officialSrc = img.getAttribute("data-official-asset");
    if (!officialSrc) return;

    const probe = new Image();
    probe.onload = () => {
      img.src = officialSrc;
    };
    probe.src = officialSrc;
  });
})();
