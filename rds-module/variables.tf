
# "rds.tf"
# RDS Parameter Group 설정 변수
variable "rds_parameter_group_name" {
    description = "RDS 파라미터 그룹의 이름"
    type        = string
}

variable "rds_parameter_family" {
    description = "RDS 파라미터 그룹의 엔진 패밀리"
    type        = string
}

variable "rds_parameter_character_set_server" {
    description = "RDS 파라미터 그룹의 character_set_server 설정 값"
    type        = string
}

# RDS Instance 설정 변수
variable "rds_instance_identifier" {
    description = "RDS 인스턴스의 식별자"
    type        = string
}

variable "rds_instance_engine" {
    description = "RDS 인스턴스의 엔진"
    type        = string
}

variable "rds_instance_engine_version" {
    description = "RDS 인스턴스의 엔진 버전"
    type        = string
}

variable "rds_instance_class" {
    description = "RDS 인스턴스의 클래스"
    type        = string
}

variable "rds_instance_allocated_storage" {
    description = "RDS 인스턴스의 할당된 스토리지 크기 (GB)"
    type        = number
}

variable "rds_instance_storage_type" {
    description = "RDS 인스턴스의 스토리지 유형"
    type        = string
}

variable "rds_instance_storage_encrypted" {
    description = "RDS 인스턴스의 스토리지 암호화 여부"
    type        = bool
}

variable "rds_instance_username" {
    description = "RDS 인스턴스의 사용자 이름"
    type        = string
}

variable "rds_instance_password" {
    description = "RDS 인스턴스의 비밀번호"
    type        = string
}

variable "rds_instance_skip_final_snapshot" {
    description = "RDS 인스턴스 종료 시 최종 스냅샷 생성 여부"
    type        = bool
}

variable "rds_instance_multi_az" {
    description = "RDS 인스턴스의 다중 가용 영역 여부"
    type        = bool
}

variable "rds_instance_publicly_accessible" {
    description = "RDS 인스턴스의 공개적 접근 허용 여부"
    type        = bool
}

variable "rds_instance_allow_major_version_upgrade" {
    description = "RDS 인스턴스의 주요 버전 업그레이드 허용 여부"
    type        = bool
}

variable "rds_instance_auto_minor_version_upgrade" {
    description = "RDS 인스턴스의 자동 부 버전 업그레이드 활성화 여부"
    type        = bool
}

variable "rds_instance_apply_immediately" {
    description = "RDS 인스턴스의 변경 사항 즉시 적용 여부"
    type        = bool
}

variable "rds_instance_maintenance_window" {
    description = "RDS 인스턴스의 유지 보수 창"
    type        = string
}

variable "rds_instance_backup_window" {
    description = "RDS 인스턴스의 백업 창"
    type        = string
}

variable "rds_instance_backup_retention_period" {
    description = "RDS 인스턴스의 데이터 백업 보존 기간"
    type        = number
}