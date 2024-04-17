#!/bin/bash

# 패키지 관리자 업데이트
apt-get update

# Docker 설치에 필요한 패키지 설치
apt-get install -y ca-certificates curl gnupg lsb-release

# Docker의 공식 GPG 키를 저장할 디렉토리 생성
mkdir -p /etc/apt/keyrings

# Docker의 공식 GPG 키 다운로드 및 저장
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Docker의 공식 레파지토리를 패키지 관리자의 소스 리스트에 추가
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

# 새로 추가된 레파지토리의 패키지 목록 업데이트
apt-get update

# Docker 및 관련 도구 설치
apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Docker 서비스 시작
systemctl start docker

# 부팅 시 Docker 서비스 자동 실행 설정
systemctl enable docker

# 현재 사용자를 docker 그룹에 추가하여 sudo 없이 Docker 사용 가능하도록 설정
usermod -aG docker $USER

# Nginx 도커 이미지 다운로드 및 컨테이너 실행 (포트 80번 연결)
docker run -d --name nginx -p 80:80 nginx

# Jenkins 도커 이미지 다운로드 및 컨테이너 실행 (포트 8080번 연결)
docker run -d --name jenkins -p 8080:8080 jenkins/jenkins:lts