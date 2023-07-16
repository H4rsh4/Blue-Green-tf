output "availability_zones" {
  value = "${data.aws_availability_zones.available.names}"
}

output "windows_ami_ids" {
  value = "${data.aws_ami.windows.id}"
}

output "amazon_linux_ami_ids" {
  value = "${data.aws_ami.amazon_linux.id}"
}

output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "public_subnet_ids" {
  value = "${module.vpc.public_subnets}"
}

output "private_subnet_ids" {
  value = "${module.vpc.private_subnets}"
}

output "app_security_group_id" {
  value = "${module.app_security_group.security_group_id}"
}

output "lb_security_group_id" {
  value = "${module.lb_security_group.security_group_id}"
}

output "app_security_group_name" {
  value = "${module.app_security_group.security_group_name}"
}

output "lb_security_group_name" {
  value = "${module.lb_security_group.security_group_name}"
}




