# encoding: UTF-8
$stdout.sync = $stderr.sync = true

class TestCase
  def initialize
    @files = {
      :input  => 'grids.scss',
      :output => 'grids.min.css'
    }
  end

  def run_tests
    tests = self.methods.grep(/^test/)

    tests.each do |m|
      print '[%1$d/%2$d] Running %3$s... ' % [(tests.index(m) + 1), tests.length, m.to_s]
      self.send(m)
      puts 'done'
    end

  end

  def test_scss_compilation
    system('sass -Ct compressed %1$s %2$s --sourcemap=none' % [@files[:input], @files[:output]])
    raise 'Could not generate CSS file' unless $?.to_i == 0
  end

  def test_css_file
    raise 'CSS file does not exist' if !File.exist?(@files[:output])
  end
end
