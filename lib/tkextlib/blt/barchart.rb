# frozen_string_literal: false
#
#  tkextlib/blt/barchart.rb
#                               by Hidetoshi NAGAI (nagai@ai.kyutech.ac.jp)
#

require 'tk' unless defined?(Tk)
require 'tkextlib/blt.rb'
require 'tkextlib/blt/component.rb'

module Tk::BLT
  class Barchart < TkWindow
    TkCommandNames = ['::blt::barchart'.freeze].freeze
    WidgetClassName = 'Barchart'.freeze
    WidgetClassNames[WidgetClassName] ||= self

    include PlotComponent
    include GraphCommand

    def __boolval_optkeys
      ['bufferelements', 'buffergraph', 'invertxy']
    end
    private :__boolval_optkeys

    def __strval_optkeys
      ['text', 'label', 'title', 'file',
        'background', 'plotbackground']
    end
    private :__strval_optkeys

    def __tkvariable_optkeys
      super() << 'colormap' << 'fontmap'
    end
    private :__tkvariable_optkeys

    def extents(item)
      num_or_str(tk_send_without_enc('extents', item))
    end

    def invtransform(x, y)
      list(tk_send_without_enc('invtransform', x, y))
    end

    def inside(x, y)
      bool(tk_send_without_enc('inside', x, y))
    end

    def metafile(file=None)
      # Windows only
      tk_send('metafile', file)
      self
    end

    def snap(output, keys={})
      tk_send_without_enc('snap', *(hash_kv(keys, false) + output))
      self
    end

    def transform(x, y)
      list(tk_send_without_enc('transform', x, y))
    end
  end
end
