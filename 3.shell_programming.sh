# 쉘 스크립트 작성 : 반드시 확장자 .sh
touch myscript.sh
nano myscript.sh
echo "hello world"
chmod u+x myscript.sh

# 스크립트 실행
./myscript.sh

##############실습###################
# 터미널 창에 "script practice start" 문구 출력
touch myscript.sh
nano myscript.sh
echo "script practice start"
# 홈 디렉토리에서 mydir이라는 폴더 생성
cd
mkdir mydir
# mydir로 이동해서 file1.txt, file2.txt 파일 생성
cd mydir
touch file1.txt
touch file2.txt
# file1.txt에는 hello from file1이라는 문구 입력
echo "hello from file1" >> file1.txt
# file2.txt에는 hello from file2이라는 문구 입력
echo "hello from file2" >> file2.txt
# file1.txt 파일을 백업본(copy본)을 생성. 이름은 file1_backup.txt
cp file1.txt file1_backup.txt
# file2.txt 파일은 file2_rename.txt로 변경
mv file2.txt file2_rename.txt
# 터미널 창에 "script practice end" 문구 출력
echo "script practice end"

# myscript2 생성 후 아래 코드 작성 및 실행
# if문
if [ 1 -gt 2 ]; then
  echo "hello world1"
else
  echo "hello world2"
fi

# 변수 선언 및 파일/디렉토리 검사
file_name=first_file.txt
if [ -f "$file_name" ]; then
  echo "$file_name file exists"
else
  echo "$file_name file doesn't exists"

# for문
for a in {1..100}
do
  echo "hello world$a"
done

# for문과 파일/디렉토리 목록 조회
for a in *
do
  echo "$a"
done

# for문의 변수값을 증가
count=100
for a in {1..100}
do
  let count=count+1
done
echo "count value is $count"

# for문 및 변수값 세팅 활용 : 현재 폴더에서 파일 갯수와 디렉토리 갯수 계산
count_f=0
count_d=0
for a in *
do
  if [ -f $a ]
    count_f=count_f+1
  elif [ -d $a ]
    count_d=count_d+1
done
echo "filecount is $count_f"
echo "dircount is $count_d"