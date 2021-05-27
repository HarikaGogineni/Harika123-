provider "aws"{
    access_key="AKIAZ6E45EOVSQVIX4YG"	
    secret_key="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"
    region = "us-east-2"
}
resource "aws_instance" "myfirstInstance" {
    ami  = "ami-00399ec92321828f5"
    count = 1
    key_name = "AWS_KeyPair"
    instance_type = "t2.micro"
    

tags= {
    Name = "aws_instance"
}  
}
