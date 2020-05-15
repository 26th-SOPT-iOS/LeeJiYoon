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
<img width="171" alt="스크린샷 2020-05-15 오후 11 18 23" src="https://user-images.githubusercontent.com/58107794/82063819-ef620d80-9706-11ea-9b87-fffc575b4f55.png">

> Solution 1
- AppDelegate에서 틴트 컬러 변경.
<img width="436" alt="스크린샷 2020-05-15 오후 11 54 30" src="https://user-images.githubusercontent.com/58107794/82064227-731bfa00-9707-11ea-9997-19b93417f0eb.png">

* * *

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
2.5 기존 테이블뷰의 default로 설정되어 있는 border line 삭제하는 법.    
<img width="392" alt="스크린샷 2020-05-15 오후 11 48 06" src="https://user-images.githubusercontent.com/58107794/82063841-f5f08500-9706-11ea-9d09-38e2d7f70245.png">

* * *

> Diffculty 1
- 2.3 섹션 분리하기 -> 구분선 추가 문제
> Solution 1

<img width="454" alt="스크린샷 2020-05-15 오후 11 47 36" src="https://user-images.githubusercontent.com/58107794/82063832-f426c180-9706-11ea-8efe-60441aad2d5c.png">

> Diffculty 2
- 2.1.2 친구 데이터 변수 설정, 어떻게 불러오는지 모르겠음.
- 3차세미나 실습에서 데이터 불러올 때에 string 대신 .cloudy를 사용하는 건 DataInformation에서 enum으로 정의해줬기 때문.
  -> 왜? 이미지가 반복적으로 사용되기 때문임. 
<img width="408" alt="스크린샷 2020-05-15 오후 11 50 07" src="https://user-images.githubusercontent.com/58107794/82063855-f8eb7580-9706-11ea-94c7-90f5317ecf4b.png">

> Solution 2

<img width="433" alt="스크린샷 2020-05-15 오후 11 49 09" src="https://user-images.githubusercontent.com/58107794/82063849-f7ba4880-9706-11ea-859d-aa16ee52d5b0.png">
<img width="416" alt="스크린샷 2020-05-15 오후 11 49 17" src="https://user-images.githubusercontent.com/58107794/82063854-f852df00-9706-11ea-8d36-61070c3e9d3d.png">

- 걍 이렇게 짝꿍끼리 잘 맞춰주면 된다. :smile:    

> Difficulty 3

- nameLabel 데이터가 안 불러와짐.
  -> 왜? 데이터 수정 이후 reload가 되지 않기 때문이었음. (Thanks to 남수)
  
> Solution 3

<img width="444" alt="스크린샷 2020-05-15 오후 11 47 57" src="https://user-images.githubusercontent.com/58107794/82063837-f557ee80-9706-11ea-8d4c-f6d7f1718c62.png">     

> Difficulty 4 

- 나의 프로필이 친구 목록에도 등장한다. 
  -> 왜? 섹션이 2개인데, 2개 섹션 모두 데이터셋 0부터 시작.

> Solution 4

<img width="450" alt="스크린샷 2020-05-15 오후 11 47 48" src="https://user-images.githubusercontent.com/58107794/82063835-f4bf5800-9706-11ea-9b65-a796edfa837b.png">  

> Difficulty 5

- **Difficulty 4** 여기서 두번째 섹션은 {indexPath.row+1}부터 시작한다고 인위적으로 지정했더니, 마지막 데이터는 셀 높이가 두번째 섹션이 아닌, 첫번째 섹션 높이였음.

> Solution 5

<img width="428" alt="스크린샷 2020-05-16 오전 12 16 30" src="https://user-images.githubusercontent.com/58107794/82066848-e7a46800-970a-11ea-9f87-e8cb38cd7b01.png">

- 원래는 if...else 구문이었는데, 그러다보니 마지막 데이터는 else에 포함되는 것 같아, 분기문을 다시 설정해줬음.

* * *

### 3. 테이블 로우 삭제 interactive 구현

<img width="460" alt="스크린샷 2020-05-15 오후 11 47 24" src="https://user-images.githubusercontent.com/58107794/82063831-f2f59480-9706-11ea-8a84-259f8ebbb930.png">    

> Problem 1

- 내 프로필까지도 삭제된다는 문제 발생.
  - 내 프로필 <-> 친구목록은 다른 기능이다. -> 애초에 테이블 셀 분리하는 것이 더 확장성있으며, 효율적임.    
  
> Solution 1

- 다시 인위적으로 내 프로필은 삭제가 안 되게끔 할 수 있지만, 확장성이 있는 방식이 아니어서 패스함.
  - 다음부터는 기능이 다르면 분리해야겠다. :muscle:

* * *

### 4. 세팅 메뉴 ActionSheet 구현

<img width="458" alt="스크린샷 2020-05-15 오후 11 48 25" src="https://user-images.githubusercontent.com/58107794/82063845-f721b200-9706-11ea-856a-3eed0b8ecb50.png">     

* * *

# Lessons Learned 

```
1. 기능이 다르면, 분리한다.
2. 언더카멜은 소문자부터!
```

* * *


