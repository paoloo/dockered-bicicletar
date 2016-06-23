
.PHONY: run

build: __main__.py DadosBicicletar/api.py DadosBicicletar/core.py DadosBicicletar/bottle.py DadosBicicletar/__init__.py
	zip -9r dadosbicicletar.zip * && docker build -t paoloo/dadosbicicletar .

run:
	docker run -p 8080:8080 paoloo/dadosbicicletar

