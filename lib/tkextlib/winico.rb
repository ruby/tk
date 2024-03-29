# frozen_string_literal: false
#
#  winico -- Windows Icon extension support
#                               by Hidetoshi NAGAI (nagai@ai.kyutech.ac.jp)
#
require 'tk' unless defined?(Tk)

# call setup script for general 'tkextlib' libraries
require 'tkextlib/setup.rb'

# call setup script
require 'tkextlib/tktable/setup.rb'

# load library
require 'tkextlib/winico/winico'
