#!/bin/bash

# 한글 2020 베타를 페도라37에 설치하기 위한 간단한 스크립트 입니다. 해당 스크립트와 deb파일을 같은 공간에 놓고 실행시켜 주세요. 
# 저작권 문제로 deb 파일은 구글검색으로 찾아주세요(검색하면 나옵니다)
# hoffice-hwp_11.20.0.989_amd64.deb 보다 최신버전은 버그가 있어 해당버전을 사용합니다(2023년 1월 기준)


# 의존성 패키지 설치

sudo dnf -y copr enable patrickl/libcurl-gnutls

sudo dnf -y install libcurl-gnutls alien


# deb 패키지 변환
echo "rpm 꾸러미로 변환 및 설치를 시작합니다. 시간이 제법 걸리니 기다려 주세요"

sudo alien --to-rpm --scripts -i hoffice-hwp_11.20.0.989_amd64.deb

sleep 2s

# 한/영 전환 관련 수정

cd /opt/hnc/hoffice11/Bin/

sudo mv qt qt.bak

echo "끝."

sleep 2s

exit 0
