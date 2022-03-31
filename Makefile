build:
	docker build -t ejtradermt .

run: build
	docker run --rm -dit -p 5900:5900 -p 15555:15555 -p 15556:15556 -p 15557:15557 -p 15558:15558 --name ejtradermt -v ejtradermt:/data ejtradermt

builddev:
	docker build -t kev_mt .

dev: 
	docker run -dit -p 5900:5900 -p 15555:15555 -p 15556:15556 -p 15557:15557 -p 15558:15558 --name kev_mt -v ~/.mt_data:/root/Metatrader/MQL5/Files kev_mt

shell: 
	docker exec -it ejtradermt bash

users: build
	docker exec -it ejtradermt adduser novouser
