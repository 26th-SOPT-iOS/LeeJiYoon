# LeeJiYoon
이지윤

## SOPT 활동 Timeline :computer:
|구분|내용|날짜|비고|
|---|------|---|--|
|1차 세미나|Navigation Bar 이용 화면 전환, 데이터 주고 받기|2020.04.18|중간고사로 불참했습니다.|
|[1차 과제1](https://github.com/26th-SOPT-iOS/LeeJiYoon/tree/master/NavigationTrial)|VC 이동|2020.04.18||
|1차 과제2|로그인 화면|2020.04.18||
|[2차 세미나](https://github.com/26th-SOPT-iOS/LeeJiYoon/tree/master/2ndSeminar) |Tab Bar 이용, autoLayout, StackView, ControllView|2020.04.25||
|[2차 과제1](https://github.com/26th-SOPT-iOS/LeeJiYoon/tree/master/ScrollViewSample)|Zeplin 참고 로그인 화면 & 스크롤뷰|2020.05.08||
|[2차 과제2](https://github.com/26th-SOPT-iOS/LeeJiYoon/tree/master/Calculator%20Sample)|autoLayout 활용 계산기 화면|2020.05.08||
|2차 도전과제|Interactive UI|2020.05.08||
|[3차 세미나](https://github.com/26th-SOPT-iOS/LeeJiYoon/tree/master/3rd%20Seminar)|PickerView, CollectionView, TableView|2020.05.09||
|[3차 과제](https://github.com/26th-SOPT-iOS/LeeJiYoon/tree/master/ScrollViewSample)|Zeplin 참고 TableView 활용 카카오톡 친구목록, 삭제, 설정 Action Sheet 구현|2020.05.15||

<br/>
<br/>

> ## 2차 과제1

## Lessons Learned

<br/>

- Stack View 쌓을 때 UIView도 함께 활용하기.
- 계속 반복되어서 적용되어야 하는 것(radius 적용 등)은 OutletCollection 활용하기 (control + drag로 끌어다놓으면 됨.)

<br/>

## Unsolved Questions

<br/>

- autoLayout 적용할 떄 height와 width에 constraints 적용하면 기기마다 다르게 셋되는가?
<br/>
<br/>
... 계속 수정 예정.

* * *

## 3차 세미나 과제 리뷰

> Progress - Difficulty - Solution

### 1. 탭바 컨트롤러 사용
> Progress
```
1.1 2개의 탭(홈, 친구) 만들어서 VC와 연결
1.2 탭바 아이콘 unselected, selected 다르게 설정
1.2.1 아이콘 컬러 default 세팅 변경
```
> Difficulty 1
- 1.2.1 아이콘 컬러 검정색으로 변경하기.
- 틴트 컬러를 조정하라고 해서 처음에는 global tint color 바꿨으나 적용 안됐음.
> Solution 1
- AppDelegate에서 틴트 컬러 변경.

- 

### 2. 테이블 뷰 사용 -> 친구 목록 구현
> Progress
```
2.1 친구 데이터 세팅
2.1.1 친구 데이터 셋 (프로필 사진 - 이름 상태메세지)
2.1.2 친구 데이터 변수 설정 및 연결
2.3 섹션 분리하기
2.4 border line 추가
2.5 기존 테이블뷰 default border line 삭제
```
> Diffculty 1
- 2.3 섹션 분리하기 -> 구분선 추가 문제
> Solution 1
> Diffculty 2
- 2.1.2 친구 데이터 변수 설정, 어떻게 불러오는지 모르겠음.
> Solution 2
> Difficulty 3
- nameLabel 데이터가 안 불러와짐.
> Solution 3
> Difficulty 4 나의 프로필이 친구 목록에도 등장한다. <- 섹션이 2개인데, 2개 섹션 모두 데이터셋 0부터 시작.
> Solution 4


### 3. 테이블 로우 삭제 interactive 구현


### 4. 세팅 메뉴 ActionSheet 구현



# Lessons Learned 
'''
1. 기능이 다르면, 분리한다.
2. 언더카멜은 소문자부터!
'''




