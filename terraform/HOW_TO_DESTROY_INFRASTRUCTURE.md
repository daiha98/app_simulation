# HOW TO DESTROY INFRASTRUCTURE

## Tutorial

Se não desejar dar continuidade a infraestrutura construída com o *Terraform*, basta aplicar os seguintes comandos:

```linux
cd to/folder/path/terraform
```

```linux
AWS_ACCESS_KEY_ID={{YOUR_AWS_ACCESS_KEY_ID}} AWS_SECRET_ACCESS_KEY={{YOUR_AWS_SECRET_ACCESS_KEY}} terraform init -backend-config "key=production/{{PROJECT_NAME}}/terraform.tfstate"
```

```linux
AWS_ACCESS_KEY_ID={{YOUR_AWS_ACCESS_KEY_ID}} AWS_SECRET_ACCESS_KEY={{YOUR_AWS_SECRET_ACCESS_KEY}} terraform destroy --var environment=production --var project={{PROJECT_NAME}} --var github_token={{YOUR_GITHUB_TOKEN}} --var ecr_name={{YOUR_ECR_REPOSITORY_NAME}} -auto-approve
```
