# terraform-modules
Infrastructure modules to be used by organization.


# Notes

One open point is the following:

* This repo will have `many modules`. 

or

* This repo will have `only this module`.

This is a point to be considered. If it's a single module per repo, it's easier to version a module individually from others with git tags. However, our pipeline will need
to make downloads from many repositories. If it's many modules per repo, it will be harder to version each module individually, but the repo will act as a single source of truth for
modules.

This is a topic [discussed in the Terragrunt community](https://github.com/gruntwork-io/terragrunt-infrastructure-modules-example#monorepo-vs-polyrepo) as well.

As a personal opinion I would favor `many modules per repo` because in the end, you will end up having many modules. Therefore, you will end 
up with many repositories and searching globally between modules will become very hard and also the management of that many repositories will be pretty hard.

However, I believe this is something to be discussed at a team level considering the project requirements, tools and decision made along the way.


### Commands

```
terraform init

terraform plan 

terraform apply

// find out different values form output, usefull for automated scripts
terraform output public_ip

curl Public IPv4 address:server_port
```