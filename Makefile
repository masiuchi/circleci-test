all: build save remove_image load

build:
	docker build --cache-from test -t test .

load:
	docker load -i test.tar

save:
	docker save test > test.tar

remove_image:
	- docker rmi test

clean: remove_image
	rm test.tar
