
firsttime_setup:
	pip install awscli oktaauth aws_role_credentials

# Set up the following environment variables before using the  make file
# export OKTA_USER_NAME=xxxx@thoughtworks.com
# export AWS_APP_ID=xxxxx12312xxxxx12312
okta_auth:
	oktaauth --username ${OKTA_USER_NAME} --server thoughtworks.okta.com --apptype amazon_aws --appid ${AWS_APP_ID} | aws_role_credentials saml --profile beach --region us-east-2 > /dev/null 2>&1

generate_keys: okta_auth taint_instance
	mkdir -p ansible/keys
	"yes" | ssh-keygen -f ./ansible/keys/ssh_key -q -P "test"
	chmod 0600 ./ansible/keys/*.*

generate_certificate_signing_request:
	openssl req -nodes -newkey rsa:2048 -sha256 -keyout ./ansible/certs/myserver.key -out ./ansible/certs/server.csr

infra_plan: generate_keys
	terraform plan

infra_apply: okta_auth
	terraform apply

generate_certificates:
	openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -subj /CN=localhost -keyout ./ansible/certs/nginx.key -out ./ansible/certs/nginx.crt

base_provisioning: generate_certificates
	ansible-playbook ansible/playbook.yml

ssh_into_the_instance:
	ssh-agent
	ssh-add ansible/keys/ssh_key
	ssh -i ansible/keys/ssh_key ec2-user@vinodsanthanam.com

taint_instance:
	terraform taint -module="instanceModule" aws_instance.instance