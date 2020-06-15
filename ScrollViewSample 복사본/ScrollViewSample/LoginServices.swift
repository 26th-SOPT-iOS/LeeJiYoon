//
//  LoginServices.swift
//  ScrollViewSample
//
//  Created by 이지윤 on 2020/05/16.
//  Copyright © 2020 이지윤. All rights reserved.
//

import Foundation
import Alamofire // 라이브러리 사용 위해 Import 해줌.

struct LoginServices {
    static let shared = LoginServices()
    private func makeParameter(_ id: String, _ pwd: String) -> Parameters { return ["id": id, "password": pwd]
        // 밑에 사용하는 파라미터 위해 미리 private func 설정해준다. Request Body에 있는 키값 주의해서 만든다.
    }
    func login(id: String, pwd: String, completion: @escaping (NetworkResult<Any>) -> Void)
    // escape 코드
    {
        let header: HTTPHeaders = ["Content-Type": "application/json"] // Request Header 설정
        let body = makeParameter(id, pwd)
        let dataRequest = Alamofire.request(APIConstants.signinURL, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header)
               dataRequest
                   .validate(statusCode: 200..<500)
                   .responseDecodable(of: SimpleResponse<String>.self) { response in
                       switch response.result {
                       case .success:
                           print(response.value)
                           print(response.value?.message)
                       case .failure(let err):
                           print(err)
                       }
                    
                    dataRequest.responseData(completionHandler: <#T##(DataResponse<Data>) -> Void#>)

        // 원하는 형식의 HTTP Request 생성한다. -> 아직 통신이 안되는 상태임.
        
        
        
        // "dataRequest.responseData -> 여기부터 통신 시작.
        // 클로저형식으로 구현 -> 분기처리
        print(APIConstants.signupURL)
        print(body)
}
}
