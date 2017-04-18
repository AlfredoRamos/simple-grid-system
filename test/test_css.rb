require 'minitest/autorun'

class TestCss < Minitest::Test

  def setup
    Dir.mkdir('build') unless Dir.exist?('build')

    @files = {
      :input  => 'scss/main.scss',
      :output => 'build/grids.css'
    }
  end

  def test_css_file
    # Create CSS file
    system('sass -Ct compressed %1$s %2$s --sourcemap=none' % [
      @files[:input],
      @files[:output]
    ])

    # Check the previous command exit code
    assert_same(0, $?.to_i)

    # Check if file was created
    assert File.exist?(@files[:output])
  end
end
