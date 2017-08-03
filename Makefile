IMAGE_NAME=pascalgn/hostinfo

build:
	docker build -t $(IMAGE_NAME) .

push: build
	docker login
	docker push $(IMAGE_NAME)
