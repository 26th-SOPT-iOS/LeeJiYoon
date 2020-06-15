//
//  SignupServices.swift
//  ScrollViewSample
//
//  Created by 이지윤 on 2020/05/16.
//  Copyright © 2020 이지윤. All rights reserved.
//

import Foundation
import Alamofire // 라이브러리 사용 위해 Import 해줌.

struct SignupServices {
    static let shared = SignupServices()
    private func makeParameter(_ id: String, _ pwd: String, _ name: String, _ email: String, _ phone: String) -> Parameters { return ["id": id, "password": pwd, "name": name, "email": email, "phone": phone]
        // 밑에 사용하는 파라미터 위해 미리 private func 설정해준다. Request Body에 있는 키값 주의해서 만든다.
    }
    func login(id: String, pwd: String, name: String, email: String, phone: String, completion: @escaping (NetworkResult<Any>) -> Void)
    // escape 코드
    {
        let header: HTTPHeaders = ["Content-Type": "application/json"] // Request Header 설정
        let body = makeParameter(id, pwd, name, email, phone)
        let dataRequest = Alamofire.request(APIConstants.signupURL, method: .post, parameters: body, encoding:
            JSONEncoding.default, headers: header)
        // 원하는 형식의 HTTP Request 생성한다. -> 아직 통신이 안되는 상태임.
        
        // "dataRequest.responseData -> 여기부터 통신 시작.
        // 클로저형식으로 구현 -> 분기처리
        print(APIConstants.signupURL)
        print(body)
    
        dataRequest.responseData { dataResponse in
            switch dataResponse.result {
            case .success:
                
                // server header status value
                
                guard  let statusCode = dataResponse.response?.statusCode,
                    let value = dataResponse.data else {
                    print("value err")
                return
                
            }
                let networkResult = self.judge(by: statusCode, value)
                completion(networkResult) // escape로 넘어간다.
            case .failure: completion(.networkFail)
                // .failure인 경우엔 escape로 넘어와서 networkFail을 받아올 수 없는 상황임.
            }
            
        }
    }
    private func judge(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
            case 200: return isSignup(by: data)
            case 400: return .pathErr
            case 500: return .serverErr
            default: return .networkFail
            // .failure인 경우엔 escape로 넘어와서 networkFail을 받아올 수 없는 상황임.
        }
    }
    
    private func isSignup(by data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(SignupData.self, from: data)
            else {
                return .pathErr
                // 이미 있는 로그인 데이터로 가입했을 때 -> 이미 있는 정보입니다..
        }
        print(decodedData.status) //204
        if decodedData.success  {
            return .success("")
            
        }
        else {
            return .requestErr(decodedData.message)
            
        }
        // guard let tokenData = // decodedData.data else {
            ///return .requestErr(decodedData.message)
        ///return .success(tokenData.jwt)
        
        // 응답해야하는 게 무조건 있어야 한다. Why? 함수(guard let)를 만들었으니까, 리턴 값이 반드시 있어야함.
    }

}


