FROM hashicorp/terraform:0.11.14

COPY terraform /terraform

WORKDIR /terraform

RUN apk add --no-cache bash ; \
    terraform init ; \
    terraform plan -out=terraform.plan 
