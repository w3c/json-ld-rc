
![W3C Logo](https://www.w3.org/Icons/w3c_home)

# RDFa Core Initial Context, JSON-LD Recommended Context

This is the repository for a recommended context for JSON-LD 1.1, as well as the RDFa Core Initial Context, developed and maintained by the [W3C JSON-LD Working Group](https://www.w3.org/2018/json-ld-wg/). Most of the major resources in this repository are redirected from W3C URI-s that have been in use by the community for a while. These are as follows:

* **_RDFa Core Initial Context_**: a list of predefined prefixes defined for RDFa as an [“initial context”](http://www.w3.org/TR/rdfa-core/#s_initialcontexts). RDFa users can use these prefixes without having the obligation of defining the prefixes in the HTML code, because RDFa implementations are supposed to “know” these prefixes. The list of these prefixes are available in:
    * [HTML+RDFa](./rdfa-1.1.html), redirected from `https://www.w3.org/2011/rdfa-context/rdfa-1.1.html`
    * [Turtle](./rdfa-1.1.ttl), redirected from `https://www.w3.org/2011/rdfa-context/rdfa-1.1.ttl`
    * [RDF/XML](./rdfa-1.1.rdf), redirected from `https://www.w3.org/2011/rdfa-context/rdfa-1.1.rdf`
    * [JSON-LD](./rdfa-1.1.jsonld), redirected from `https://www.w3.org/2011/rdfa-context/rdfa-1.1.jsonld`

    Note the the `https://www.w3.org/2011/rdfa-context/rdfa-1.1` URI can be used and the format is returned based on context negotiation.
* **_JSON-LD Recommended Context_**: the list of prefixes, defined by the RDFa initial context, is also available as a JSON-LD [`@context` file](https://www.w3.org/TR/json-ld11/#the-context). JSON-LD users can use these prefixes by referring to this recommended context by importing it through a `@context` statement. This context file is available in:
    * [JSON-LD Context](./context.jsonld), redirected from `http://www.w3.org/2013/json-ld-context/rdfa11` 
* **_Turtle prefixes_**: the list of prefixes, defined by the RDFa initial context, is also available as a Turtle file. Turtle does not have any import mechanism, but this file can be imported manually into a Turtle file. This turtle file is available in:
    * [Turtle prefixes](./prefixes.ttl) (no redirection from `w3c.org` is provided)  

## Automatically Derived Files

On a pull request, the files in Turtle, RDF/XML, and JSON-LD syntaxes are all built from the RDFa Initial Context in [rdfa-1.1.html](./rdfa-1.1.html). Those files should not be modified by hand.

Files are built using a [GitHub Workflow](https://developer.github.com/v3/actions/workflows/) using a series of Ruby scripts to generate the associated files. The workflow is started when a Pull Request is created or updated.

## Contributing to the Repository

Use the standard fork, branch, and pull request workflow to propose changes to the content. Please make branch names informative—by including the issue or bug number for example.

Please read [CONTRIBUTING.md](CONTRIBUTING.md), about licensing contributions.

## Code of Conduct

W3C functions under a [code of conduct](https://www.w3.org/Consortium/cepc/).
