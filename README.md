terraform 101 - a practical example
===================================

The slides for this presentation can be found [here](https://docs.google.com/presentation/d/11v8uGEm4YsSpX6TM5BkVHZr0xWUDH8q1xIoR_CJJ4NI/edit?usp=sharing).

Footage of this presentation can be seen [here](https://www.youtube.com/watch?v=FvOHfsTmBfo).

requirements
------------

 - Terraform v0.12.0
   - provider.aws v2.13.0
 - aws-cli/1.16.171

commands used in presentation
-----------------------------

```bash
# init
terraform init

# plan
terraform plan

# apply
terraform apply

# destroy
terraform destroy
```

editor used in presentation
---------------------------

`vim` - config viewable here: [github.com/pemcconnell/.dotfiles/blob/master/vimrc](https://github.com/pemcconnell/.dotfiles/blob/master/vimrc)

how do you get the AMI ID?
--------------------------

You can either search for the image you want in the AWS console (EC2 > launch instance), or you can invoke a search via the CLI and parse the output:

```bash
aws ec2 describe-images --owners amazon --filters 'Name=name,Values=amzn2-ami-hvm-2.0.????????-x86_64-gp2' 'Name=state,Values=available' --output json --region eu-west-1 | jq -r '.Images | sort_by(.CreationDate) | last(.[]).ImageId'
```

what else can i build?
----------------------

almost everything you can via that console. take a look at the terraform docs links below to get started.

useful links
------------

**terraform**

 - [terraform.io](https://www.terraform.io/)
 - [terraform.io/docs/](https://www.terraform.io/docs/index.html)
 - [terraform.io/docs/providers/](https://www.terraform.io/docs/providers/)
 - [terraform.io/docs/providers/aws/](https://www.terraform.io/docs/providers/aws/index.html)
 - [terraform.io/docs/providers/aws/r/instance.html](https://www.terraform.io/docs/providers/aws/r/instance.html)
 - [terraform.io/docs/providers/aws/r/db_instance.html](https://www.terraform.io/docs/providers/aws/r/db_instance.html)
 - [terraform.io/docs/providers/aws/r/s3_bucket.html](https://www.terraform.io/docs/providers/aws/r/s3_bucket.html)

**aws**

 - [aws.amazon.com](https://aws.amazon.com)
 - [aws.amazon.com/cli/](https://aws.amazon.com/cli/)
 - [aws.amazon.com/ec2/](https://aws.amazon.com/ec2/)
 - [aws.amazon.com/ec2/instance-types/](https://aws.amazon.com/ec2/instance-types/)
 - [aws.amazon.com/rds/](https://aws.amazon.com/rds/)
 - [aws.amazon.com/rds/instance-types/](https://aws.amazon.com/rds/instance-types/)
