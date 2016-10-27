#!/usr/bin/ruby
require 'pathname'

##
# This module provides utilities to manage Jetbrains IDEs installed using the
# Jetbrains Toolbox application from the command line
module Jetbrains
  DEFAULT_INSTALLATION_ROOT = Pathname.new('~/.local/share/JetBrains/Toolbox').expand_path
  @installation_root = DEFAULT_INSTALLATION_ROOT
  @app_root = DEFAULT_INSTALLATION_ROOT + 'apps'
  class << self
      attr_reader :installation_root, :app_root
      def installation_root(new_root)
        raise ArgumentError, "Installation root '#{new_root}' not found" unless Pathname.new(new_root).is_directory?
        @installation_root = new_root
      end
  end

  ##
  # Launches the most recent version found of the given jetbrains IDE
  class Launcher
    def initialize(name = 'idea')
      candidates = Dir.glob("#{Jetbrains.app_root}/**/#{name}.sh").sort
      raise ArgumentError, "No files named '#{name}.sh' found under '#{Jetbrains.app_root}" if candidates.empty?
      if candidates.length > 1
        puts 'Multiple candidates found...'
        puts candidates
      end
      pid = spawn(candidates.last)
      puts "Launched #{candidates.last} with pid #{pid}"
    end
  end
end

# Irrelevant in a gem context, but allows script to be used standalone
if __FILE__ == $PROGRAM_NAME
  if ARGV.length == 1
    Jetbrains::Launcher.new(ARGV[0])
  else
    puts "Usage: 'jetbrains <appname>', where <appname> is one of 'clion','idea','rubymine' etc..."
    puts "e.g. 'jetbrains clion' to find/launch latest toolbox installation of the CLion IDE"
  end
end
