variable "machine_type" {
  #default     = "e2-highcpu-2"
  default = "e2-custom-4-6144"
}

variable "zone" {
  default = "us-central1-c"
}

variable "region" {
  default = "us-central1"
}

variable "network" {
  default = "default"
}

variable "us-subnet" {
  default = "10.128.0.0/24"
}

variable "subnet" {
  default = "10.128.0.0"
}

variable "image" {
#  default     = "ubuntu-os-cloud/ubuntu-1804-lts"
  default = "projects/mibot-222814/global/images/vosk-image-1a"
}

variable "public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCt36yP5PesG6k5XUZZ6u0Ann9n2An7FLQ8bndMG8pKu57D+N4Xtl8S9NDJgEKAOJnnaNxfwtKSNBxShhg3eXUueLoSEptCpDb5XnHXxo+jP/E2lANNF5Oq49jvPHJlkE0mifBDG7fGFOKV0+rFYH4xN4HTEJh37OEm13x1nF/PzqgGKUTUSe66cs5+ohPtHAavKyVcZWmsDCAwAikLu7gXajSHZIwiWh6FwgTyq4WRyR8AP1l1oOSz5qK0lCO1N4vHAcjfAnR/r+stU3KCUhmqZsKUeICsl0Dd8+aBwbEkrRLZWylpaEcHiKt0UnvCwOE9fgu7gqOHOpgmZabmSzYH root@serv-devop"
}

variable "private_key_path" {
  default = "~/.ssh/google_compute_engine"
}

variable "host" {
  #default = "vsk-ast-us-c1-z1-demo00"
}
