#!/usr/bin/osascript -l JavaScript

function run (arg) {
    var se = Application("System Events");
    if ( arg.length == 1 ) {
        se.currentDesktop.picture.set(arg[0]);
    }
}
