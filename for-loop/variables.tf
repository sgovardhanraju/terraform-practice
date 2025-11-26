variable "instances" {
   # default = ["mongodb","mysql","rabbitmq","redis","catalogue","cart","user","shipping","payment","frontend"]
    default = {
        mongodb = "t3.micro"
        mysql = "t3.small"
        redis = "t3.micro"
    }
}

variable "zone_id" {
    default = "Z0732355102QE6GB8XDYY"
}

variable "domain_name" {
    default ="sgrdevsecops.fun"
}
