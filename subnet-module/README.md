**subnet-module/README.md**

## **Subnet Module**

이 모듈은 VPC 내에 서브넷을 생성하는데 사용됩니다.

## 사용 방법
```hcl
module "subnet" {
  source = "./subnet-module"

  vpc_id                = "vpc-1234567890abcdef0"
  region                = "ap-northeast-2"
  public_subnet_a_cidr  = "10.0.0.0/24"
  public_subnet_c_cidr  = "10.0.1.0/24"
  private_subnet_a_cidr = "10.0.2.0/24"
  private_subnet_c_cidr = "10.0.3.0/24"
  db_subnet_a_cidr      = "10.0.4.0/24"
  db_subnet_c_cidr      = "10.0.5.0/24"

  tags = {
    Environment = "dev"
  }
}
```

## 변수

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| vpc_id | 서브넷이 속할 VPC의 ID | `string` | n/a | yes |
| region | 서브넷이 생성될 리전 | `string` | n/a | yes |
| public_subnet_a_cidr | Public Subnet A의 CIDR 블록 | `string` | n/a | yes |
| public_subnet_c_cidr | Public Subnet C의 CIDR 블록 | `string` | n/a | yes |
| private_subnet_a_cidr | Private Subnet A의 CIDR 블록 | `string` | n/a | yes |
| private_subnet_c_cidr | Private Subnet C의 CIDR 블록 | `string` | n/a | yes |
| db_subnet_a_cidr | DB Subnet A의 CIDR 블록 | `string` | n/a | yes |
| db_subnet_c_cidr | DB Subnet C의 CIDR 블록 | `string` | n/a | yes |
| tags | 서브넷에 적용할 태그 맵 | `map(string)` | `{}` | no |

## 출력

| Name | Description |
|------|-------------|
| public_subnet_a_id | 생성된 Public Subnet A의 ID |
| public_subnet_c_id | 생성된 Public Subnet C의 ID |
| private_subnet_a_id | 생성된 Private Subnet A의 ID |
| private_subnet_c_id | 생성된 Private Subnet C의 ID |
| db_subnet_a_id | 생성된 DB Subnet A의 ID |
| db_subnet_c_id | 생성된 DB Subnet C의 ID |
