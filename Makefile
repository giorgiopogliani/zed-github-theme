PKL ?= pkl
THEMES := light dark darker cream

.PHONY: all clean $(THEMES)

all: $(THEMES)

$(THEMES):
	$(PKL) eval theme-github-$@.pkl --format json > github-$@.json

clean:
	rm -f $(THEMES:%=github-%.json)
