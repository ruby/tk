#
#  Tile theme engin (tile widget set) support
#                               by Hidetoshi NAGAI (nagai@ai.kyutech.ac.jp)
#

require 'tk'

# call setup script for general 'tkextlib' libraries
require 'tkextlib/setup.rb'

# library directory
require 'tkextlib/tile/setup.rb'

# load package
# TkPackage.require('tile', '0.4')
# TkPackage.require('tile', '0.6')
verstr = TkPackage.require('tile')
ver = verstr.split('.')
if ver[0].to_i == 0 && ver[1].to_i <= 4
  # version 0.4 or former
  module Tk
    module Tile
      USE_TTK_NAMESPACE = false
    end
  end
else
  # version 0.5 or later
  module Tk
    module Tile
      USE_TTK_NAMESPACE = true
    end
  end
end

# autoload
module Tk
  module Tile
    TkComm::TkExtlibAutoloadModule.unshift(self)

    def self.package_version
      begin
        TkPackage.require('tile')
      rescue
        ''
      end
    end

    module TileWidget
      def instate(state, script=nil, &b)
        if script
          tk_send('instate', state, script)
        elsif b
          tk_send('instate', state, Proc.new(&b))
        else
          bool(tk_send('instate', state))
        end
      end

      def state(state=nil)
        if state
          tk_send('state', state)
        else
          list(tk_send('state'))
        end
      end
    end

    ######################################

    autoload :TButton,       'tkextlib/tile/tbutton'

    autoload :TCheckButton,  'tkextlib/tile/tcheckbutton'
    autoload :TCheckbutton,  'tkextlib/tile/tcheckbutton'

    autoload :TEntry,        'tkextlib/tile/tentry'
    autoload :TCombobox,     'tkextlib/tile/tcombobox'

    autoload :TFrame,        'tkextlib/tile/tframe'
    autoload :TLabelframe,   'tkextlib/tile/tlabelframe'

    autoload :TLabel,        'tkextlib/tile/tlabel'

    autoload :TMenubutton,   'tkextlib/tile/tmenubutton'

    autoload :TNotebook,     'tkextlib/tile/tnotebook'

    autoload :TProgressbar,  'tkextlib/tile/tprogressbar'

    autoload :TRadioButton,  'tkextlib/tile/tradiobutton'
    autoload :TRadiobutton,  'tkextlib/tile/tradiobutton'

    autoload :TScrollbar,    'tkextlib/tile/tsrollbar'

    autoload :TSeparator,    'tkextlib/tile/tseparator'

    autoload :TSquare,       'tkextlib/tile/tsquare'

    autoload :TreeView,      'tkextlib/tile/treeview'

    autoload :Style,         'tkextlib/tile/style'
  end
end
