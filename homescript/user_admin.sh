#!/bin/bash

# PASSWD 체크
PASSWD=/etc/passwd
# Function Menu, UserAdd, UserVerity, UserDel
Menu() 
{
cat<< EOF
    (관리 목록)
------------------------------------
    1) 사용자 추가
    2) 사용자 확인
    3) 사용자 삭제
    4) 종료
------------------------------------
    
EOF
}

USERAdd()
{
    :
}

USERVerify() {
    cat << EOF
    (사용자 확인)
------------------------------------
    
$(awk -F: '$3 >= 1001 && $3 <= 60000 {print $1} ' /etc/passwd | nl)

------------------------------------

EOF
}

UserDel() 
{   :

}
while true
do
    Menu
    echo -n "선택 번호?(1|2|3|4)"
    read NUM
    
    case $NUM in
        1) USERAdd : ;;
        2) USERVerify : ;;
        3) UserDel : ;;
        4) break;;
        *) echo " [WARN ] 잘못 입력하셨습니다.";;
    esac
done