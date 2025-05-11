mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;
var m = mgraphics;
var width = mgraphics.size[0];
var height = mgraphics.size[1];
function paint() {
    width = mgraphics.size[0];
    height = mgraphics.size[1];
    m.set_source_rgba(0, 0, 0, 1);
    m.rectangle(0, 0, width, height);
    m.fill();
}
