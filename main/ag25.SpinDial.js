/*

simple 2d dial

*/

mgraphics.init();
mgraphics.autofill = 0;
mgraphics.relative_coords = 0;

var val = 0;
var _range = 1.;
var _thickness = 50.;
var _degrees = 360.;

function paint()
{
    var viewsize = mgraphics.size;
    var width = viewsize[0];
    var height = viewsize[1];
    var ndegrees, start, end;

    var bgcolor = this.patcher.bgcolor;
    var outlinecolor = this.patcher.elementcolor;
    var needlecolor = this.patcher.color;

    mgraphics.set_source_rgba(0, 0, 0, 0);
    mgraphics.rectangle(0, 0, width, height);
    mgraphics.fill();

    ndegrees = _degrees;
    start = (270 - ndegrees * 0.5) * (2*Math.PI / 360.) + Math.PI;
    end = (270 + ndegrees * 0.5) * (2*Math.PI / 360.) + Math.PI;

    mgraphics.arc(width * .5, height * .5, width * .475, start, end);
    mgraphics.set_line_width(width * 0.1 * (_thickness * 0.01));
    mgraphics.set_source_rgba(0, 0, 0, 1);
    mgraphics.stroke();

    var prop = val / _range;
    end -= ndegrees * (2*Math.PI / 360.) * (1 - prop);

    mgraphics.set_source_rgba(1, 0.4, 0, 1);
    mgraphics.arc(width * .5, height * .5, width * .475, start, end);
    mgraphics.stroke();

}

function bang()
{
    mgraphics.redraw();
    outlet(0,val);
}

function msg_float(v)
{
    val = Math.min(Math.max(0,v),1);
    notifyclients();
    bang();
}

function set(v)
{
    val = Math.min(Math.max(0,v),1);
    notifyclients();
    mgraphics.redraw();
}

function setvalueof(v)
{
    msg_float(v);
}

function getvalueof()
{
    return val;
}

function forcesize(w,h)
{
    if (w!=h) {
        h = w;
        box.message("size",w,h); // TODO: fix calling through additional box methods
    }
}
forcesize.local = 1; //private

function onresize(w,h)
{
    forcesize(w,h);
    mgraphics.redraw();
}
onresize.local = 1; //private
