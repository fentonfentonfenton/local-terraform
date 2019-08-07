# local-terraform

git clone!
then (on osx)

`TMPDIR=/private$TMPDIR docker-compose build`

`TMPDIR=/private$TMPDIR docker-compose up`

hopefully


uses
https://github.com/GoogleContainerTools/container-structure-test

add tests to the yaml file in `/tests`


uses
https://www.terraform.io/

create localstack entities via `terraform/main.tf` *as long as* you've added those services into `docker-compose.yml` AND localstack supports em
