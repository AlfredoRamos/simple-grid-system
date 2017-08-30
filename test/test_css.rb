require 'minitest/autorun'
require 'sass'
require 'autoprefixer-rails'

class TestCss < Minitest::Test

  def setup
    Dir.mkdir('build') unless Dir.exist?('build')

    @files = {
      input: 'scss/main.scss',
      temp: 'build/grids.tmp.css',
      output: 'build/grids.css'
    }
  end

  def test_css_file
    # Create CSS file
    File.open(@files[:temp], 'w') do |f|
      f.puts Sass::Engine.new(File.read(@files[:input]), {
        style: :expanded,
        cache: false,
        syntax: :scss,
        filename: @files[:input],
        sourcemap: :none
      }).render
    end

    # Create vendor-prefixed CSS file
    File.open(@files[:output], 'w') do |f|
      f.puts AutoprefixerRails.process(File.read(@files[:temp]), {
        map: false,
        from: @files[:temp],
        to: @files[:output],
        browsers: [
          'Chrome >= 45',
          'Firefox ESR',
          'Edge >= 12',
          'Explorer >= 10',
          'iOS >= 9',
          'Safari >= 9',
          'Android >= 4.4',
          'Opera >= 30'
        ]
      }).css
    end

    # Check if files were created
    assert File.exist?(@files[:temp])
    assert File.exist?(@files[:output])
  end
end
