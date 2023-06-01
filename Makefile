build:
	docker build -t jypsoftware/ctfreak-cloudron ./ctfreak-app/

deploy:
	docker tag jypsoftware/ctfreak-cloudron:latest jypsoftware/ctfreak-cloudron:0.1.0
	docker push jypsoftware/ctfreak-cloudron:0.1.0
	docker push jypsoftware/ctfreak-cloudron:latest

install:
	cd ctfreak-app; \
	cloudron install --image jypsoftware/ctfreak-cloudron:0.1.0 -l ctfreak
