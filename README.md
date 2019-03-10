# Digital ocean terraform

Make a droplet and install `docker` and `docker-compose`.
```bash
terraform apply -var-file="testing_default.tfvars"
```
```
# testing_default.tfvars
token = "94db2d0"
fingerprint = ["9f:5c"]
```
