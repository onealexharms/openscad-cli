# OpenSCAD-cli
OpenSCAD-cli is a command line workflow helper for [OpenSCAD](https://github.com/openscad/openscad).

## Why?
OpenSCAD has a nice gui that lets you work on code and reload what you're making when you save. It has a console to tell you about errors. You can also edit in a different editor (thank the gods) but still open the image in OpenSCAD.

It also offers command-line access, which is nice, because the gui gets tiresome (to me).

The command line access feels a bit complex to me, so really this is for convenience. OpenSCAD-cli relies on the command line capabilities built into OpenSCAD, so it's not a huge deal. Just a bit easier on my brain, and maybe yours.

## License and Code of Conduct
OpenSCAD-cli is covered by the same license OpenSCAD uses (as of 22 July 2020), the GNU General Public License. Everything we do is under the [Maitria Code of Welcoming Conduct](http:maitria.com/coc).

## Installing
OpenSCAD-cli is a simple shell script, and it's installed using a very tiny install script that puts it in /usr/local/bin, and also puts a symlink (alias) into your /usr/local/bin, so you can invoke it using `osc` instead of typing `openSCAD-cli` all the time. You don't need to use the install script if you don't want to.

## Using it
`osc start mything` will create a file, mything.scad, which you can edit however you want.
`osc render` will create an .stl file that you can load into your 3d Printer slicer so you can 3d print it.
NOTE: If you already have something in /usr/local/bin called osc, the install script will give you the option to overwrite or not. If you don't, the you'll need to use `openscad-cli` in place of `osc`

## Intentions
Assuming I keep working on it, it will also do this stuff:
-`osc render` will 
--show you a preview. Or maybe it will be `osc preview`. This will initially be specific to the kitty terminal, because that's what I use, and because it can display images. 
--show you errors and console logging.
-`osc print` will open your slicer and close up the project.
-`osc test` might run tests in your project, check for errors etc, without rendering.
Basically, I expect osc to grow whenever I (or you?) have to open OpenSCAD to accomplish something.

## Contributing
Go for it. Open an issue first if you think we might not be into your changes. Standards are basically keep it simple, and name all the things. (You might notice I literally named -gt $GREATER_THAN. Because yuck. How is -gt friendly? Sheesh.)
