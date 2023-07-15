output "availability_zones" {
  value = "${data.aws_availability_zones.available.names}"
}

output "windows_ami_ids" {
  value = "${data.aws_ami.windows.id}"
}