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
|[4차 세미나](https://github.com/26th-SOPT-iOS/LeeJiYoon/tree/master/ScrollViewSample)|로그인 서버통신 |2020.05.16||
|[4차 과제](https://github.com/26th-SOPT-iOS/LeeJiYoon/tree/master/ScrollViewSample)|회원가입 서버통신, 로그아웃 구현, 자동로그인 구현|2020.05.22||

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

> Process - Difficulty - Solution

### 1. 탭바 컨트롤러 사용
> Process
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
> Process
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


## 4차 세미나 과제 리뷰

> Process - Difficulty - Solution

### 1. 로그인 서버통신 구현하기
> Process          
```
1.1 API 통신용 URL 설정
1.2 로그인 데이터 처리해주기
1.3 서버 통신 결과 처리해주기
1.4 서버 통신 구현하기
1.5 화면이랑 연결하기
```
        
> Difficulty

- 이 로직을 이해하는 거 자체가 너무 어려웠다.
- 대강 정리해보자면:
    1. 서버통신을 위해 서버통신을 할 URL을 설정한다. 실습에서는 static let으로 처리해줬지만, 로그인/회원가입 여부에 따라 분기문으로 설정해주는 방식도 괜찮을 것 같다.
    2. 서버에서 날라오는 로그인 데이터(JSON 형식의)를 처리해주어야 한다. 그 다음 디코딩이 들어간다. * 로그인 시에는 토큰데이터가 필요하다. (https://velopert.com/2350) 이거보고 대충 이해함.
    3. 로그인 데이터 처리로 어떤 네트워크 결과가 나올 수 있는지 분기문 처리. -> 굳이 파일로 안 만들어도 될 것 같기도 함.
    4. 서버 통신 구현하는 부분이 사실 아직 완벽히 이해가 안감. 대충 서버통신이 시작하면 분기문을 나눠주고 그 다음 디코딩을 한다. 인데, 디코딩을 먼저 해주고 그 다음 분기문 처리해주는 방식이 더 확장성 있을 것 같음. -> 왜? 앞으로도 status code가 늘어날 수 있기 때문에. 
        - 그래서 코딩을 새로 해보려고 하고 있지만, 잠시 뒤로 미루었습니다.. :sweat_smile:
            
* * *
        
### 2. 회원가입 서버통신 성공하기       

> Process          
```
1.1 API 통신용 URL 설정
1.2 회원가입 데이터 처리해주기
1.3 서버 통신 결과 처리해주기
1.4 서버 통신 구현하기
1.5 화면이랑 연결하기
```
:arrow_forward: 하는 방식은 로그인 서버통신이랑 똑같다!

> Difficulty 1

- 일단 자꾸 network Error가 떴음. 근데 알고보니 URL을 잘못 쓴 거였다. 오타를 조심하자. :shit:
- 회원가입 완료를 누르면 로그인 화면으로 돌아가긴 하는데, alert가 안 떴음.

> Solution 1

- 버튼에 연결해둔 segue 삭제하고, 로그인 -> 회원가입이 present 방식으로 연결되었기 때문에, pop 방식으로 되돌려줌.

``` SWift

case .success(let token):
        guard let token = token as? String
            else {
                return
                
        }
        UserDefaults.standard.set(token, forKey: "token")
        
        self.navigationController?.popViewController(animated: true)
```

> Difficulty 2

- Postman에서는 회원가입 성공 시 (Status 204, Success true), 중복 ID로 회원가입 실패 시 (Status 200, Success fail)을 줬다. 그래서 코드를 이렇게 써줬더니 통신이 안됐음!! :anguished:

<img src="./READMEimages/스크린샷 2020-05-22 오후 11.20.38.png" alt = "스크린샷 2020-05-22 오후 11.20.38" width="40%" />
<img src="./READMEimages/스크린샷 2020-05-22 오후 11.20.22.png" alt = "스크린샷 2020-05-22 오후 11.20.22" width="40%" />



``` SWift

    private func judge(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
            case 204: return isSignup(by: data)
            case 200: return .requestErr(true)
            case 400: return .pathErr
            case 500: return .serverErr
            default: return .networkFail

        }
    }
```
:arrow_forward: 이렇게 했더니 에러 발생.

> Solution 2

:arrow_down: 아래와 같이 변경해줬다.

``` SWift

    private func judge(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
            case 200: return isSignup(by: data)
            case 400: return .pathErr
            case 500: return .serverErr
            default: return .networkFail

        }
    }
```

- 왜?? 이렇게 됐을까?
    - 이유는 서버통신 구현해주는 파일에서 순서가 이랬기 때문!
    - 데이터 요청한다 -> 성공하면 -> __status code 나눈다.__ -> __디코딩한다.__
    - 디코딩은 나중에 해주기 때문에, Postman에서 전달하는 코드가 200이든, 204이든 상관이 없음! 서버 상에서 데이터 요청 성공하면 Alamofire에서 200을 반환한다.
    - 그렇다면 어떻게 200으로만 처리해줘도, alert가 잘 뜰까?
        - 그거는 회원가입 성공 시에는 success가 true, 실패 시에는 success가 fail로 뜨기 때문임.
            
 * * *      
    
### 3. 로그아웃 구현      

> Process

- 과제물이 잘못 나갔고, 원래는 홈 화면이 친구목록이 아니라, 솝트 이미지 화면이었다는 걸 이제 알았다. 하지만 로그아웃은 그냥 나의 홈화면인 친구 목록에 구현했음... ㅎ 죄송함다.

<img src="./READMEimages/스크린샷 2020-05-22 오후 11.33.31.png" alt = "스크린샷 2020-05-22 오후 11.33.31" width="40%" />

:arrow_forward: 이것도 나름 예쁘지 않나요? 하하 :sweat_smile:

``` SWift

    @IBAction func doLogout(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        // 화면 dismiss
    }
```

:arrow_forward: 걍 이렇게 로그아웃 버튼 누르면, 화면 dismiss되도록 처리해주었음.. 뭔가 2% 아니 4% 부족하지만... 넘 어려워요 ... :weary:
        
* * *       
        
### 4. 자동로그인 구현     


> Process

- 이것도 스위치가 아니라, 체크박스인 줄 몰랐다. 다시 수정하는 걸로.. 일단 만들었다.

<img src="./READMEimages/스크린샷 2020-05-22 오후 11.33.51.png" alt = "스크린샷 2020-05-22 오후 11.33.51" width="40%" />


``` SWift

    @IBOutlet weak var autoLoginSwitch: UISwitch!

    @IBAction func doLogin(_ sender: Any) {
        guard let inputID = idTextField.text
            else {
                return
                
        }
        guard let inputPWD = pwTextField.text
            else{
                return
        }
                if autoLoginSwitch .isOn{
                    let dataSave = UserDefaults.standard
                    dataSave.setValue(inputID, forKey: "savedID")
                    dataSave.setValue(inputPWD, forKey: "savedPWD")
                    
                    UserDefaults.standard.synchronize()
                    
                } else {
                    let dataSave = UserDefaults.standard
                    dataSave.setValue(nil, forKey: "savedID")
                    dataSave.setValue(nil, forKey: "savedPWD")
                    
                    UserDefaults.standard.synchronize()
                    
                    
        }

// 둘이 연결해주기. 
        LoginService.shared.login(id: inputID, pwd: inputPWD)
```

:arrow_forward: 이렇게 연결해주었음. 
- 참고1 (https://hyesunzzang.tistory.com/50)
- 참고2 (https://nsios.tistory.com/15)

> Difficulty

- 그런데 자동 로그인이 되려면, 일단 디폴트가 자동 로그아웃이어야 하는데, 내 코드에서는 디폴트가 자동 로그인이다.. 여기까지 생각 못했는데, 기능 구현에 대해 더 생각해보아야 할 것 같다. 예전 회사에서 개발자가 당연한 기능 안 넣어줬다고 왜 저러나 했는데,,, 반성하는중. (tmi)

* * *

## Lessons Learned (자아성찰...)

1. 문법이 너무 어렵다. 배경지식이 없어도 초반에는 따라갈 수 있었는데, 지금은 로직은 이해되지만, 직접 써보라고 하면 안 된다. 열심히 문법도 배우자.
2. 요청한 기능을 충실히 구현하자. 반대의 입장이 되었을 때는, 기능을 완전하게 전달하여 요청하자. 한 수 더 보고 디테일하게 잡아내자.
3. 코드를 쓸 때는 확장성도 함께 고려하자. 그런 여유가 생길 수 있음 좋겠다.. 내가 과연 앱잼을 잘 해낼 수 있을까? 너무 어렵다. :joy_cat:

- 일기로 변질되어버린, 4차 과제 리뷰 끝!
