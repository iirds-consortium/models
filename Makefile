RDF = $(wildcard *.rdf)
TTL = $(patsubst %.rdf, %.ttl, $(RDF))

none:
	@echo Are you sure you want to overwrite these .ttl files? Then use "make all"
	@echo $(TTL)

all: $(TTL)

%.ttl: %.rdf
	owl.bat write --input=rdfxml --useCommaByDefault $^ $@
