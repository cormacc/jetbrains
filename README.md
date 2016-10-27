# Jetbrains Toolbox Application Launcher

Find and launch Jetbrains IDEs installed using the toolbox from the command line.

Searches default (Linux) Jetbrains Toolbox installation path for latest installation of a given Jetbrains IDE. e.g. 'jetbrains clion' or 'jetbrains idea'.

Minimally tested on my own installation, i.e.

* Arch Linux
* Toolbox version 1.0.2002
* Current and EAP releases of IDEA and CLion installed

I realise this could be easily and more portably implemented in bash, but life's too short :)

## Installation
    
    $ gem install jetbrains

`lib/jetbrains.rb` should also function as a standalone script, so you just copy it from the repo to somewhere in your path 
 and `chmod a+x` it if e.g. you want to chuck this in your dotfiles repo or something rather than installing it as a gem.   

## Usage

    $ jetbrains <app-name>

where the app-name is the prefix of the *.sh launcher included in the app's bin folder.
These are `idea.sh` and `clion.sh` for the two I use. e.g.

    $ jetbrains idea
    
or

    $ jetbrains clion


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cormacc/jetbrains

Should be straightforward to add support for Windows and OSX. Also non-default toolbox paths.
I have no need for either, but PRs welcome if you do.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

