build: build_app build_web

build_app:
	docker build -t marcusbello/django-crm-gunicorn .

build_web:
	docker build -t marcusbello/django-crm-nginx ./nginx

push_image:
	docker push marcusbello/django-crm-gunicorn
	docker push marcusbello/django-crm-nginx

