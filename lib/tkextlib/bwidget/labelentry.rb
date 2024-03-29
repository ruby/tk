# frozen_string_literal: false
#
#  tkextlib/bwidget/labelentry.rb
#                               by Hidetoshi NAGAI (nagai@ai.kyutech.ac.jp)
#

require 'tk' unless defined?(Tk)
require 'tk/entry'
require 'tkextlib/bwidget.rb'
require 'tkextlib/bwidget/labelframe'
require 'tkextlib/bwidget/entry'

module Tk
  module BWidget
    class LabelEntry < Tk::Entry
    end
  end
end

class Tk::BWidget::LabelEntry
  include Scrollable

  TkCommandNames = ['LabelEntry'.freeze].freeze
  WidgetClassName = 'LabelEntry'.freeze
  WidgetClassNames[WidgetClassName] ||= self

  def __strval_optkeys
    super() << 'helptext' << 'insertbackground' << 'entryfg' << 'entrybg'
  end
  private :__strval_optkeys

  def __tkvariable_optkeys
    super() << 'helpvar'
  end
  private :__tkvariable_optkeys

  def __font_optkeys
    super() << 'labelfont'
  end
  private :__font_optkeys

  def entrybind(context, *args, &block)
    # if args[0].kind_of?(Proc) || args[0].kind_of?(Method)
    if TkComm._callback_entry?(args[0]) || !block
      cmd = args.shift
    else
      cmd = block
    end
    _bind([path, 'bind'], context, cmd, *args)
    self
  end

  def entrybind_append(context, *args, &block)
    #if args[0].kind_of?(Proc) || args[0].kind_of?(Method)
    if TkComm._callback_entry?(args[0]) || !block
      cmd = args.shift
    else
      cmd = block
    end
    _bind_append([path, 'bind'], context, cmd, *args)
    self
  end

  def entrybind_remove(*args)
    _bind_remove([path, 'bind'], *args)
    self
  end

  def entrybindinfo(*args)
    _bindinfo([path, 'bind'], *args)
    self
  end
end
