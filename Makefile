GOPATH=$(shell pwd)/.gopath

debug:
	scripts/build.sh

clean:
	rm -f bin/driver-go-ble || true
	rm -rf .gopath || true

test:
	cd .gopath/src/github.com/ninjasphere/driver-go-ble && go get -t ./...
	cd .gopath/src/github.com/ninjasphere/driver-go-ble && go test ./...

vet:
	go vet ./...

.PHONY: debug clean test vet
