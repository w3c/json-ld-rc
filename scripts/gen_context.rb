#!/usr/bin/env ruby
# Creates a JSON-LD context from the JSON-LD representation of the prefixes
require 'json'

JSON_STATE = JSON::State.new(
  indent:       "  ",
  space:        " ",
  space_before: "",
  object_nl:    "\n",
  array_nl:     "\n"
)

context = {'@context' => {}}

File.open(ARGV[0]) do |f|
  input = JSON.load(f)

  # Prefix mappings
  input['@graph'].
    filter {|o| o['@type'] == 'rdfa:PrefixMapping'}.
    sort_by {|o| o['rdfa:prefix']}.
    each do |obj|

    context['@context'][obj['rdfa:prefix']] = obj['rdfa:uri']
  end

  # Term mappings
  input['@graph'].
    filter {|o| o['@type'] == 'rdfa:TermMapping'}.
    sort_by {|o| o['rdfa:term']}.
    each do |obj|

    context['@context'][obj['rdfa:term']] = obj['rdfa:uri']
  end
end

$stdout.puts(context.to_json(JSON_STATE))
