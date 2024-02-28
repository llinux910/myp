#!/bin/bash

# 사용자 입력을 받아 변수에 저장
input_message="$1"

# 입력된 내용이 없는 경우 에러 메시지 출력 후 종료
if [ -z "$input_message" ]; then
    echo "사용법: sh.sh <커밋 메시지>"
    exit 1
fi

# 변경된 내용을 스테이징하고 커밋
git add .
git commit -m "$input_message"

# 변경된 내용을 원격 저장소로 푸시
git push

