//Debugging (Keydown Listener)

window.addEventListener("keydown", (e) => {
  // Return is any input is on focus
  if (["INPUT", "TEXTAREA"].includes(document.activeElement.tagName)) return;

  // Debug-Grid [Shift + 1]
  if (e.shiftKey && e.keyCode === 49)
    document.querySelector(".debug-grid").classList.toggle("active");

  // Background [Shift + 2]
  if (e.shiftKey && e.keyCode === 50)
    document.querySelector(".grid").classList.toggle("debug");

  // Baseline-grid [Shift + 3]
  if (e.shiftKey && e.keyCode === 51)
    document.querySelector("body").classList.toggle("show-base-grid");

  // Element-debug [Shift + 4]
  if (e.shiftKey && e.keyCode === 52)
    document.querySelector("body").classList.toggle("debug");

  // Blur [Shift + 5]
  if (e.shiftKey && e.keyCode === 53)
    document.querySelector("body").classList.toggle("blur");

  // DarkMode [Shift + 6]
  if (e.shiftKey && e.keyCode === 54)
    document.querySelector("html").classList.toggle("dark");
});
