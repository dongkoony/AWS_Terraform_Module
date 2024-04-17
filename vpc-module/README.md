**vpc-module/README.md**
## **VPC Module**

이 모듈은 AWS VPC를 생성하는데 사용됩니다.

## 사용 방법
```hcl
module "vpc" {
  source = "./vpc-module"

  vpc_name       = "example-vpc"
  vpc_cidr_block = "10.0.0.0/16"

  enable_dns_hostnames = true
  enable_dns_support   = true
  
  tags = {
    Environment = "dev"
  }
}
```

## 변수

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| vpc_name | VPC의 이름 | `string` | n/a | yes |
| vpc_cidr_block | VPC의 CIDR 블록 | `string` | n/a | yes |
| enable_dns_hostnames | VPC 내에서 DNS 호스트 이름을 활성화할지 여부 | `bool` | `true` | no |
| enable_dns_support | VPC 내에서 DNS 지원을 활성화할지 여부 | `bool` | `true` | no |
| tags | VPC에 적용할 태그 맵 | `map(string)` | `{}` | no |

## 출력

| Name | Description |
|------|-------------|
| vpc_id | 생성된 VPC의 ID |
| vpc_cidr_block | 생성된 VPC의 CIDR 블록 |
