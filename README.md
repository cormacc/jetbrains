# Jetbrains Toolbox Application Launcher

Find and launch Jetbrains IDEs installed using the toolbox from the command line.

Searches default (Linux) Jetbrains Toolbox installation path for latest installation of a given Jetbrains IDE. e.g. 'jetbrains clion' or 'jetbrains idea'.

Minimally tested on my own installation, i.e.

* Arch Linux
* Toolbox version 1.0.2002
* Current and EAP releases of IDEA and CLion installed



## Installation
    
    $ gem install jetbrains

## Usage

    $ jetbrains <app-name>

where the app-name is the prefix of the *.sh launcher included in the app's bin folder.
These are `idea.sh` and `clion.sh` for the two I use. i.e.

    $ jetbrains idea
    
or

    $ jetbrains clion 


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cormacc/jetbrains


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

