variable "x" {
    type = number
}

locals {
    x = var.x == 1 ? 100: var.x == 2 ? 200 : 0
}

output "x" {
    value = local.x
}