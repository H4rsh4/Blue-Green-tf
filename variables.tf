variable "region"{
    default = "us-east-2"
}

variable "vpc_cidr_block"{
    default = "10.0.0.0/16"
}

variable "public_subnet_cidr"{
    description = "CIDR block for the public subnet"
    type = list(string)
    default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

}

variable "private_subnet_cidr"{
    description = "CIDR block for the private subnet"
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

# create a variable for count of public subnets
variable "public_subnet_count"{
    description = "Count of public subnets"
    type = number
    default = 3
}

# create a variable for count of private subnets
variable "private_subnet_count"{
    description = "Count of private subnets"
    type = number
    default = 3
}

#create a variable for the count of blue instances
variable "blue_instance_count"{
    description = "Count of blue instances"
    type = number
    default = 2
}

# create a boolean variable to enable blue environment
variable "enable_blue_env"{
    description = "Enable blue environment"
    type = bool
    default = true
}




