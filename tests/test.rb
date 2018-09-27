require 'minitest/autorun'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'fizzbuzz/engine_test'
require 'fizzbuzz/presenter_test'

Minitest::Unit.autorun


