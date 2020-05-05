# Build files based on rdfa-1.1.html

task default: :publish

desc "Build files resulting from rdfa-1.1.html"
task publish: %w(rdfa-1.1.ttl rdfa-1.1.rdf rdfa-1.1.jsonld context.jsonld prefixes.ttl)

desc "Build rdfa-1.1.ttl from rdfa-1.1.html"
file "rdfa-1.1.ttl" => "rdfa-1.1.html" do
  sh "rdf serialize --output-format ttl rdfa-1.1.html -o rdfa-1.1.ttl"
end

desc "Build rdfa-1.1.rdf from rdfa-1.1.html"
file "rdfa-1.1.rdf" => "rdfa-1.1.html" do
  sh "rdf serialize --output-format rdfxml rdfa-1.1.html -o rdfa-1.1.rdf"
end

desc "Build rdfa-1.1.jsonld from rdfa-1.1.html"
file "rdfa-1.1.jsonld" => "rdfa-1.1.html" do
  sh "rdf serialize --output-format jsonld rdfa-1.1.html -o rdfa-1.1.jsonld"
end

desc "Build context from rdfa-1.1.jsonld"
file "context.jsonld" => "rdfa-1.1.jsonld" do
  sh "ruby scripts/gen_context.rb rdfa-1.1.jsonld > context.jsonld" 
end

desc "Build Turtle prefixes from rdfa-1.1.jsonld"
file "prefixes.ttl" => "rdfa-1.1.jsonld" do
  sh "ruby scripts/gen_prefixes.rb rdfa-1.1.jsonld > prefixes.ttl" 
end
