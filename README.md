# terraform-modules
Infrastructure modules to be used by organization.


## Commands 

```
terraform init

terraform plan 

terraform apply

// find out different values form output, usefull for automated scripts
terraform output public_ip
```


# Notes

One open point is the following:

* This repo will have `many modules`. 

or

* This repo will have `only this module`.

This is a point to be considered. If it's a single module per repo, it's easier to version with git tags. However, out pipeline will need
to make downloads from many repositories. If it's many modules per repo, it will be harder to version each module individually, but the repo will act as a single source of truth for
modules.
