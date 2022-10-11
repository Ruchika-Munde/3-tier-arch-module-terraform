region               = "us-east-2"
profile              = "terraform-user"

// values assigned for vpc
vpc_name            = "aws-vpc"
vpc_cidr            = "10.10.0.0/16"
vpc_azs             = ["us-east-2a", "us-east-2b", "us-east-2c"]

// values assigned for jump-server-public-subnets
jump_public_subnets = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]


// values assigned for app-server-private-subnets
app_private_subnets = ["10.10.4.0/24", "10.10.5.0/24", "10.10.6.0/24"]


// values assigned for db-server-private-subnets
db_private_subnets = ["10.10.7.0/24", "10.10.8.0/24", "10.10.9.0/24"]

vpc_tags            = {"created-by"="terraform","env"="dev"}
