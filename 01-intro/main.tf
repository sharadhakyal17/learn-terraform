provider "local" {}

resource "local_file" "foo" {
    content = "Hello World"
    filename = "/tmp/foo.bar"
}

# Normal variable 
variable "x" {
    default = 10
}

#list variable
variable "y"    {
    default = [1, "abc", 0.3, false]
}

#map variable

variable "z" {
    default = {
        name = "shp"
        age = "30+"
    }
}


#print variable on output 
output "x" {
    value = var.x
}

#printing variables when the value contains strings
output "x1" {
    value = "Value of variable x is - ${var.x}"
}


output "y1" {
    value = var.y[0] #prints 0.3
}


output "z1" {
    value = "Name - {var.z['name']} Age - {var.z.age}"
}

#### Variables from another files
#tfvars --  manually loaded, Meaning these files are loaded to command line by using -var-file option
# terraform apply -auto-approve -var-file=data.tfvars

variable "input" {}

output "input" {
    value = var.input
}


# auto.tfvars- Automatically these files are loaded in the execution.
variable "class" {}
output "class" {
    value = var.class
}

variable "testautosample" {}
output "testautosample" {
    value = var.testautosample
}
