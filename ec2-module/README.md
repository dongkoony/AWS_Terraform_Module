**ec2-module/README.md**

## **EC2 Instance Module**

이 모듈은 `AWS EC2` 인스턴스를 생성하는데 사용됩니다.

## 사용 방법
```hcl
module "ec2_instance" {
  source = "./ec2-module"

  ami           = "your-instance-ami-id"
  instance_type = "t2.micro(Default)"
  key_pair      = "your-key-pair-name"
  subnet_id     = "yout-subnet-id"
  vpc_security_group_ids = ["your-security-group-ids"]

  tags = {
    Name = "example-ec2-instance"
  }
}

# 변수 정의
variable "instance_type" {
  description = "EC2 인스턴스의 인스턴스 유형"
  type        = string
  default     = "t2.micro"
}
```

## 변수

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| `ami` | EC2 인스턴스에 사용할 AMI ID | `string` | n/a | yes |
| `instance_type` | EC2 인스턴스의 인스턴스 유형 | `string` | `"t2.micro"` | no |
| `key_pair` | EC2 인스턴스에 연결할 키 페어 이름 | `string` | n/a | yes |
| `subnet_id` | EC2 인스턴스가 생성될 서브넷의 ID | `string` | n/a | yes |
| `vpc_security_group_ids` | EC2 인스턴스에 적용할 보안 그룹 ID 리스트 | `list(string)` | n/a | yes |
| `tags` | EC2 인스턴스에 적용할 태그 맵 | `map(string)` | `{}` | no |

## 출력

| Name | Description |
|------|-------------|
| `instance_id` | 생성된 EC2 인스턴스의 ID |
| `instance_public_ip` | 생성된 EC2 인스턴스의 공인 IP 주소 |
| `instance_private_ip` | 생성된 EC2 인스턴스의 사설 IP 주소 |
