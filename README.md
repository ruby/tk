# Ruby/Tk

Tk interface module using tcltklib

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tk'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tk

## Documentation

### Read this first

If you want to use Ruby/Tk (tk.rb and so on), you must have tcltklib.so
which is working correctly. When you have some troubles on compiling,
please read [README.tcltklib] and [README.ActiveTcl].

Even if there is a tcltklib.so on your Ruby library directory, it will not
work without Tcl/Tk libraries (e.g. libtcl8.4.so) on your environment.
You must also check that your Tcl/Tk is installed properly.

--------------------------------------------

Ruby/Tk (tk.rb など) を使いたい場合には，tcltklib.so が正しく動いていな
ければなりません．コンパイル時に何か問題が生じた場合は，[README.tcltklib]
や [README.ActiveTcl] を見てください．

たとえ Ruby のライブラリディレクトリに tcltklib.so が存在していたとして
も，実行環境に Tcl/Tk ライブラリ (libtcl8.4.so など) がなければ機能しま
せん．Tcl/Tk が正しくインストールされているかもチェックしてください．

<tt>==========================================================
                Hidetoshi NAGAI (nagai@ai.kyutech.ac.jp)</tt>

### Manual

- [Manual tcltklib, in English](MANUAL_tcltklib.eng)
- [Manual tcltklib, in Japanese](MANUAL_tcltklib.ja)

### Other documents

[README.tcltklib] for compilation instructions.

[README.fork] is a note on forking.

[README.macosx-aqua] is about MacOS X Aqua usage.

[README.tcltklib]: README.tcltklib
[README.ActiveTcl]: README.ActiveTcl
[README.fork]: README.fork
[README.macosx-aqua]: README.macosx-aqua

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Your contributions are welcome on GitHub at https://github.com/ruby/tk.

Unfortunately we have no resource to handle issue reports.

Therefore please open pull request with either:

- a bug report with a correction patch or
- (at least) a reproducible code snippet for an issue in form of a test/spec.

Thank you in advance!

## License

The gem is available as open source under the terms of the [Ruby license](LICENSE.txt).
