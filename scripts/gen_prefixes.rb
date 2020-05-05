#!/usr/bin/env ruby
# Creates a RDFa 1.1 Initial Context prefixes in Turtle form
require 'json'

File.open(ARGV[0]) do |f|
  input = JSON.load(f)

  # Prefix mappings
  input['@graph'].
    filter {|o| o['@type'] == 'rdfa:PrefixMapping'}.
    sort_by {|o| o['rdfa:prefix']}.
    each do |obj|

    $stdout.puts "@prefix #{obj['rdfa:prefix']}: <#{obj['rdfa:uri']}> ."
  end
end
