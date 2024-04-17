![스크린샷 2024-04-15 192828](https://github.com/dongkoony/AWS_Terraform_Module/assets/109497684/0f7e9a53-14ed-4776-bf98-ce6bcb933726)


# AWS Terraform Modules

## 1. 개요

이 프로젝트는 AWS 인프라를 Terraform으로 프로비저닝할 때 사용할 수 있는 전문적인 Terraform 모듈 집합입니다. 이 모듈들은 실무에서 사용되는 모범 사례와 권장 사항을 따르며, 모듈의 재사용성과 유지 관리성을 높이는 것이 목표입니다. 이를 통해 인프라 배포 과정의 효율성과 일관성을 향상시킬 수 있습니다.

## 2. 목차

- [AWS Terraform Modules](#aws-terraform-modules)
  - [1. 개요](#1-개요)
  - [2. 목차](#2-목차)
  - [3. 목표](#3-목표)
  - [4. 사용 방법](#4-사용-방법)
    - [사전 준비사항](#사전-준비사항)
    - [Terraform 구성](#terraform-구성)
    - [모듈 사용 예시](#모듈-사용-예시)
  - [5. 제공되는 모듈](#5-제공되는-모듈)
    - [EC2 모듈](#ec2-모듈)
    - [VPC 모듈](#vpc-모듈)
    - [추가 예정 모듈](#추가-예정-모듈)
  - [6. 기여하기](#6-기여하기)
  - [7. 라이센스](#7-라이센스)

## 3. 목표

이 프로젝트의 주요 목표는 다음과 같습니다:

- AWS 인프라 배포 과정에서 Terraform 모듈을 활용하여 효율성과 일관성 향상
- 모듈의 재사용성과 유지 관리성을 높여 인프라 관리 간소화
- 실무에서 사용되는 모범 사례와 권장 사항을 모듈에 반영하여 안정성과 보안성 확보
- 다양한 AWS 서비스에 대한 Terraform 모듈을 지속적으로 개발 및 개선

## 4. 사용 방법

### 사전 준비사항

- Terraform 설치 (버전 0.13 이상)
- AWS 계정 및 액세스 키 (액세스 키와 시크릿 키)
- AWS CLI 설치 및 구성

### Terraform 구성

1. 이 저장소를 클론하거나 원하는 모듈을 다운로드합니다.
2. 프로젝트 디렉터리에 `main.tf`, `variables.tf`, `terraform.tfvars` 파일을 생성합니다.
3. `main.tf`에서 필요한 모듈을 호출하고 해당 모듈의 입력 변수를 정의합니다.
4. `variables.tf`에서 사용할 변수를 선언하고, `terraform.tfvars`에서 변수의 값을 할당합니다.

### 모듈 사용 예시

```hcl
module "ec2" {
  source = "./ec2-module"

  instance_type = "t2.micro"
  ami_id        = "ami-0c55b159cbfafe1f0"
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.public_subnet_ids[0]
}

module "vpc" {
  source = "./vpc-module"

  vpc_cidr_block = "10.0.0.0/16"
  subnet_count   = 2
}
```

## 5. 제공되는 모듈

### EC2 모듈

EC2 인스턴스와 관련 리소스를 프로비저닝하는 모듈입니다. 사용자 데이터 스크립트를 통해 Docker, Nginx, Jenkins 등을 설치할 수 있습니다.

| 리소스 | 설명 |
|--------|------|
| `aws_instance` | EC2 인스턴스 |
| `aws_security_group` | EC2 인스턴스에 적용되는 보안 그룹 |
| `aws_key_pair` | EC2 인스턴스에 접속하기 위한 키 페어 |

### VPC 모듈

VPC, 서브넷, 라우팅 테이블, 인터넷 게이트웨이 등의 네트워크 리소스를 프로비저닝하는 모듈입니다.

| 리소스 | 설명 |
|--------|------|
| `aws_vpc` | VPC |
| `aws_subnet` | 서브넷 (가용 영역당 1개의 공용 및 1개의 사설 서브넷) |
| `aws_internet_gateway` | 인터넷 게이트웨이 |
| `aws_route_table` | 공용 및 사설 라우팅 테이블 |

### 추가 예정 모듈

- EKS (Amazon Elastic Kubernetes Service) 모듈
- RDS (Amazon Relational Database Service) 모듈
- S3 (Amazon Simple Storage Service) 모듈
- ALB (Application Load Balancer) 모듈
- 기타 AWS 서비스 모듈

## 6. 기여하기

이 프로젝트는 오픈 소스이며, 여러분의 기여를 환영합니다. 새로운 모듈을 추가하거나 기존 모듈을 개선하는 등 다양한 방식으로 기여할 수 있습니다. 자세한 내용은 [CONTRIBUTING.md](CONTRIBUTING.md) 파일을 참조하세요.

## 7. 라이센스

이 프로젝트는 [MIT 라이센스](LICENSE)를 따릅니다.
