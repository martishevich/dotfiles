install_ansible_mac:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew install python3
	pip3 install ansible 

install_dotfiles:
	ansible-playbook ansible/dotfiles.yml -i ansible/local -vvv -e curdir=$(CURDIR) -K

install_nvim:
	ansible-playbook ansible/nvim.yml -i ansible/local -vvv -K


docker-build:
	docker build . -t martishevich/dotfiles

docker-push:
	docker push martishevich/dotfiles

docker-bash:
	docker run -it -v ~/:/app martishevich/dotfiles bash
