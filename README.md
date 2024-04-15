![스크린샷 2024-04-15 192828](https://github.com/dongkoony/AWS_Terraform_Module/assets/109497684/0f7e9a53-14ed-4776-bf98-ce6bcb933726)

이 저장소는 AWS 인프라를 Terraform으로 프로비저닝할 때 사용할 수 있는 전문적인 Terraform 모듈 집합입니다. 실무에서 사용되는 모범 사례와 권장 사항을 따르며, 모듈의 재사용성과 유지 관리성을 높이는 것이 목표입니다.

## 목차

- [AWS Terraform Modules](#aws-terraform-modules)
  - [목차](#목차)
  - [사용 방법](#사용-방법)
  - [모듈](#모듈)
    - [EC2 모듈](#ec2-모듈)
    - [VPC 모듈](#vpc-모듈)
    - [추가 예정 모듈](#추가-예정-모듈)
  - [기여하기](#기여하기)
  - [라이센스](#라이센스)

## 사용 방법

각 모듈 디렉터리에는 해당 모듈을 사용하는 방법과 예제가 포함되어 있습니다. 일반적으로 다음 단계를 따르면 됩니다:

1. 이 저장소를 클론하거나 원하는 모듈을 다운로드합니다.
2. 모듈 디렉터리로 이동합니다.
3. `variables.tf`에 정의된 변수를 `terraform.tfvars`에 입력합니다.
4. `terraform init`을 실행하여 Terraform 초기화를 수행합니다.
5. `terraform plan`으로 변경 사항을 미리 봅니다.
6. `terraform apply`를 실행하여 인프라를 프로비저닝합니다.

## 모듈

### EC2 모듈

EC2 인스턴스와 관련 리소스를 프로비저닝하는 모듈입니다. 사용자 데이터 스크립트를 통해 Docker, Nginx, Jenkins 등을 설치할 수 있습니다.

- [EC2 모듈 문서](./ec2-module/README.md)

### VPC 모듈

VPC, 서브넷, 라우팅 테이블, 인터넷 게이트웨이 등의 네트워크 리소스를 프로비저닝하는 모듈입니다.

- [VPC 모듈 문서](./vpc-module/README.md)

### 추가 예정 모듈

- EKS (Amazon Elastic Kubernetes Service) 모듈
- RDS (Amazon Relational Database Service) 모듈
- 기타 AWS 서비스 모듈

## 기여하기

이 저장소는 오픈 소스이며, 기여를 환영합니다. 새로운 모듈을 제안하거나 기존 모듈을 개선할 수 있습니다. 자세한 내용은 [CONTRIBUTING.md](CONTRIBUTING.md)를 참조하세요.

## 라이센스

이 프로젝트는 [MIT 라이센스](LICENSE)를 따릅니다.
