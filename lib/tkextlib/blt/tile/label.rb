# frozen_string_literal: false
#
#  tkextlib/blt/tile/label.rb
#                               by Hidetoshi NAGAI (nagai@ai.kyutech.ac.jp)
#

require 'tk' unless defined?(Tk)
require 'tk/label'
require 'tkextlib/blt/tile.rb'

module Tk::BLT
  module Tile
    class Label < Tk::Label
      TkCommandNames = ['::blt::tile::label'.freeze].freeze
    end
  end
end
