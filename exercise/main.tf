provider "aws" {
  access_key = "AKIARG4WVC3SLUS3NAMB"
  secret_key = "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"
  region = "us-east-1"
}


resource "aws_instance" "Udacity_T2" {
  ami           = "ami-0742b4e673072066f"
  count         = "4"
  instance_type = "t2.micro"
  subnet_id     = "subnet-b1bc80fc"
  tags = {
    Name = "Udacity T2"
  }
}


/* resource "aws_instance" "Udacity_M4" {
   ami           = "ami-0742b4e673072066f"
   count         = "2"
   instance_type = "m4.large"
   subnet_id     = "subnet-b1bc80fc"
   tags = {
     Name = "Udacity M4"
   }
} */
