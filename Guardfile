# vim: set syntax=ruby

guard :shell do
  watch /(.*).hs$/ do |m|
    puts "\n\n\n\n"
    puts "=[ #{m[0]} ]===================================="
    puts "-[ Building ]-----------------------------------"
    `cabal build`
    puts "-[ Testing ]------------------------------------"
    puts "Testing #{m[0]}..."
    `cabal test --show-details=always`
    puts "-[ Benchmarking ]-------------------------------"
    puts "Benchmarking #{m[0]}..."
    `cabal bench`
  end
end
