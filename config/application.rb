# frozen_string_literal: true
require './config/environment'
$LOAD_PATH.unshift Config.root.join('lib')

# Load application
[
  %w(app models ** *.rb),
  %w(app helpers ** *.rb)
].each do |pattern|
  Dir.glob(Config.root.join(*pattern)).each { |file| require file }
end
