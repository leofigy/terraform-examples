Terraform import known issue https://github.com/hashicorp/terraform/issues/17847

One way to workaround this, is to put your data related commands into a module. 
In this example the creds/ local module, just execute the external command (adding dummy python command)

So in your top module you can access the "data" variables through the module output variables. 
However the only restriction before doing an import is the following 

First you need to perform an apply, this allows terraform populate the state with the output variables from the module.
then after that you can perform the import command. 

Tested with terraform 13+

Steps 

```
  terraform init
```

```
  terraform apply
```

```
  terraform import <resource_name> <id>
```
