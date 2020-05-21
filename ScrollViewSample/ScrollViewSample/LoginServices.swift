//
//  LoginServices.swift
//  ScrollViewSample
//
//  Created by 이지윤 on 2020/05/16.
//  Copyright © 2020 이지윤. All rights reserved.
//

import Foundation
import Alamofire // 라이브러리 사용 위해 Import 해줌.

struct LoginService {
    static let shared = LoginService() // shared라는 변수를 사용하면 LoginService를 사용할 수 있음.
    private func makeParameter(_ id: String, _ pwd: String) -> Parameters { return ["id": id, "password": pwd]
        // 밑에 사용하는 파라미터 위해 미리 private func 설정해준다. Request Body에 있는 키값 주의해서 만든다.
    }
    func login(id: String, pwd: String, completion: @escaping (NetworkResult<Any>) -> Void)
    // escape 코드
    {
        let header: HTTPHeaders = ["Content-Type": "application/json"] // Request Header 설정
        let dataRequest = Alamofire.request(APIConstants.signinURL, method: .post, parameters: makeParameter(id, pwd), encoding:
            JSONEncoding.default, headers: header)
        // 원하는 형식의 HTTP Request 생성한다. -> 아직 통신이 안되는 상태임.
        
        // "dataRequest.responseData -> 여기부터 통신 시작.
        // 클로저형식으로 구현 -> 분기처리
        dataRequest.responseData { dataResponse in
            switch dataResponse.result {
            case .success:
                guard let statusCode = dataResponse.response?.statusCode else {
                return
                
            }
                guard let value = dataResponse.result.value else {
                return
                
            }
                let networkResult = self.judge(by: statusCode, value)
                completion(networkResult) // escape로 넘어간다.
            case .failure: completion(.networkFail) //.failure인 경우엔 escapefh 넘어와서 networkFail을 받아올 수 없는 상황임.
            }
            
        }
    }
    private func judge(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
            case 200: return isUser(by: data)
            case 400: return .pathErr
            case 500: return .serverErr
            default: return .networkFail
            // .failure인 경우엔 escapefh 넘어와서 networkFail을 받아올 수 없는 상황임.
        }
    }
    private func isUser(by data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(SigininData.self, from: data)
            else {
                return .pathErr
                
        }
        guard let tokenData = decodedData.data else {
            return .requestErr(decodedData.message)
        }
        return .success(tokenData.jwt)
    }
    
}
