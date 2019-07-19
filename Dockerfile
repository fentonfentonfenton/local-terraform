FROM hashicorp/terraform:0.11.14

COPY terraform /terraform

WORKDIR /terraform

RUN apk add --no-cache bash ; \
    chmod +x wait-for-it.sh ; \
    terraform init ; \
    terraform plan 