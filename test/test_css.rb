# encoding: UTF-8
require 'minitest/autorun'
require 'rake'
require 'fileutils'

class TestCss < Minitest::Test

  def setup
    # Load tasks
    load('Rakefile', true)

    # Clean build
    FileUtils.rm_r('build', force: true, secure: true) if Dir.exist?('build')
  end

  def test_css_file
    # Create CSS file
    Rake::Task['build:css'].invoke

    # Check if file exists
    assert File.exist?('build/grids.css')
  end
end
