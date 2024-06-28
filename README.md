# OpenSCAD-cli
OpenSCAD-cli is a command line workflow helper for [OpenSCAD](https://github.com/openscad/openscad).

## Why?
OpenSCAD has a nice gui that lets you work on code and reload what you're making when you save. It has a console to tell you about errors. You can also edit in a different editor (thank the gods) but still open the image in OpenSCAD.

It also offers command-line access, which is nice, because the gui gets tiresome (to me).

The command line access feels a bit complex to me, so really this is for convenience. OpenSCAD-cli relies on the command line capabilities built into OpenSCAD, so it's not a huge deal. Just a bit easier on my brain, and maybe yours.

## License and Code of Conduct
OpenSCAD-cli is covered by the same license OpenSCAD uses (as of 22 July 2020), the GNU General Public License. Everything we do is under the [Maitria Code of Welcoming Conduct](http:maitria.com/coc).

## Installing

### bpkg
`bpkg install`

### Make 
`make install` 

By default, will install as `osc`, if you have a conflict on your system you can use a command-line argument

`make install INSTALL_NAME=openscad-cli`

### Manually
OpenSCAD-cli is a simple shell script, and it's installed using a very tiny install script that puts it in /usr/local/bin, and also puts a symlink (alias) into your /usr/local/bin, so you can invoke it using `osc` instead of typing `openSCAD-cli` all the time. (If you already have an osc, it will ask before stomping on it.).

There are either constants at the top of the script for you to customize, or there's a config file at ~/.config/openscad-cli.config, depending on whether I've gotten around to it when you see this.

## Using it
Honestly, best to read the script, because it's quite short and pretty dang readable, and it really changes too often for the readme to be kept up to date, at this point.

NOTE: If you already have something in /usr/local/bin called osc, the install script will give you the option to overwrite or not. If you don't, the you'll need to use `openscad-cli` in place of `osc`

## Contributing
Go for it. Open an issue first if you think we might not be into your changes. Standards are basically keep it simple, name all the things, and, once we figure out testing, tests will be expected.
*Important-ish* This is outgrowing bash quickly, of course. I suspect it will suddenly change to scheme one of these days. Don't say you weren't warned. :)
