const activate = (oni) => {
  console.log("Oni config activated");

  // access the Oni plugin API here

  // for example, unbind the default `<c-p>` action:
  // oni.input.unbind("<c-p>");

  // or bind a new action:
  // oni.input.bind("<c-enter>", () => alert("Pressed control enter"));
};

// const deactivate = () => {
//   console.log("Oni config deactivated");
// };

module.exports = {
  activate,
  // change configuration values here:
  'oni.useDefaultConfig': true,
  'oni.loadInitVim': true,
  'editor.fontSize': '14px',
  'editor.fontFamily': 'Monaco',
  'editor.completions.enabled': true,
};
