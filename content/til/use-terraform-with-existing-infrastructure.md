+++
title = "How to Use Terraform with Existing Infrastructure"
date = "2023-08-29T02:00:00-00:00"
draft = false
topics = ["AWS","Terraform"]
+++

Using Terraform with existing infrastructure.

Add the existing resource to your Terraform file:

```
resource "aws_route53_zone" "primary_zone" {
    name = var.root_domain
}
```

Then run aws cli command to get the ID:
```bash
terraform import aws_route53_zone.primary_zone <resource id>
```

This adds the resource to your state file, as if it had been managed by Terraform all along.

## References
[Import: Usage | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/cli/import/usage)