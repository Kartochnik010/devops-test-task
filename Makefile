wordpress:
	ansible-playbook \
	-i hosts \
	wordpress.yml

zabbix:
	ansible-playbook \
	-i hosts \
	zabbix.yml

zabbix-agent:
	ansible-playbook \
	-i hosts \
	zabbix_agent.yml

docker:
	ansible-playbook \
	-i hosts \
	docker.yml

copy-ssh-key:
	ssh-keygen -R 64.226.105.83
	ssh-keygen -R 142.93.107.5
	ssh-copy-id -i creds/ansible.pub root@64.226.105.83
	ssh-copy-id -i creds/ansible.pub root@142.93.107.5