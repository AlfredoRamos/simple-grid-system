# encoding: UTF-8
require 'rake/testtask'
require 'sass'
require 'autoprefixer-rails'

$stdout.sync = $stderr.sync = true

# Tests
Rake::TestTask.new(:test) do |t|
  t.test_files = FileList['test/test_*.rb']
  t.verbose = true
end

task :default => :test

namespace :build do
  files = {
    input: 'scss/main.scss',
    output: ['build/grids.css', 'build/grids.min.css']
  }

  desc 'Build CSS file'
  task :css do
    Dir.mkdir('build') unless Dir.exist?('build')
    File.open(files[:output].first, 'w') do |f|
      css = Sass::Engine.new(File.read(files[:input]), {
        style: :expanded,
        cache: false,
        syntax: :scss,
        filename: files[:input],
        sourcemap: :none
      }).render

      f.puts AutoprefixerRails.process(css, {
        map: false,
        cascade: false,
        from: files[:input],
        to: files[:output].first,
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
  end

  desc 'Build minified CSS file'
  task :minified do
    Dir.mkdir('build') unless Dir.exist?('build')
    File.open(files[:output].last, 'w') do |f|
      css = Sass::Engine.new(File.read(files[:input]), {
        style: :compressed,
        cache: false,
        syntax: :scss,
        filename: files[:input],
        sourcemap: :none
      }).render

      f.puts AutoprefixerRails.process(css, {
        map: false,
        cascade: false,
        from: files[:input],
        to: files[:output].last,
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
  end

  desc 'Build all CSS files'
  task :all do
    Rake::Task['build:css'].invoke
    Rake::Task['build:minified'].invoke
  end
end
