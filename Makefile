.PHONY:build build-ui move_build_to_backend help

build: build-ui move_build_to_backend

build-ui:
	cd frontend && yarn install && yarn build 

move_build_to_backend:
	cd frontend && mv ./build ../backend/app
	
help:
	@echo "Fix it Yourself"

login: ;@docker login
all: image tag push
image: ;@docker build -t zerotier-ui .
tag: ;@docker tag zerotier-ui xinux/zerotier-ui 
push: ;@docker push  xinux/zerotier-ui
git: add commit branch remote git-push
add: ;@git add . 
commit: ;@git commit -m "final commit"
branch: ;@git branch -M main
remote: ;@git remote add origin git@github.com:doktor-xinux/zerotier-ui.git
git-push: ;git push -u origin main	
