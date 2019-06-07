require_relative 'chuck'

if ARGV.length == 2
  Chuckjokes.replace_name(ARGV[0], ARGV[1])
elsif ARGV[0] == 'random'
  Chuckjokes.random
elsif ARGV[0].to_i > 0
  Chuckjokes.get_joke_by_id(ARGV[0].to_i)
else
  Chuckjokes.help
end