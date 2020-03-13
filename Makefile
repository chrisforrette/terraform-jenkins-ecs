plan:
	@test "${ENV}" || (echo '$$ENV variable required' && exit 1)
	terraform init && \
	terraform plan -out $(ENV).tfplan -state $(ENV).tfstate -var 'environment=$(ENV)' .;

.PHONY: plan apply