#
# thread_tk.rb :
#   The eventloop of Tk (Tk.mainloop) can run on a thread other than the
#   main thread. That is, when "require 'thread_tk'" is executed instead
#   of or before "require 'tk'",  "Thread.new{Tk.mainloop}" works properly.
#

if defined?(TkCore::RUN_EVENTLOOP_ON_MAIN_THREAD) && TkCore::RUN_EVENTLOOP_ON_MAIN_THREAD
  raise LoadError, "thread_tk.rb must be loaded before tk.rb"
end

module TkCore; RUN_EVENTLOOP_ON_MAIN_THREAD = false; end
require 'tk'
