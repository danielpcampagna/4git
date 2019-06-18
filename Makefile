GIT_CMD=4git

all:
	./install.sh

exp:
	rm -rf ./running
	mkdir ./running
	cp -rf ./experiments/exp$(N)/* ./running/
	cd running/; \
	  ./recipes.sh;

watch-exp:
	watch -n 1 -d find ./running/.git/objects/ ./running/.git/refs/

clean:
	rm -rf ./running

uninstall:
	./uninstall.sh
