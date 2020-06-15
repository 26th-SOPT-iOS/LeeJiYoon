//
//  SigninData.swift
//  ScrollViewSample
//
//  Created by 이지윤 on 2020/05/16.
//  Copyright © 2020 이지윤. All rights reserved.
//

import Foundation


struct SigninData<T: Codable>: Codable {
    var status: Int
    var success: Bool
    var message: String
    var data: T?
    enum CodingKeys: String, CodingKey { case status = "status"
        case success = "success"
        case message = "message"
        case data = "data"
        // 이거 처리 제대로 안 해주면 난리남!!!!!!
    }
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        status = (try? values.decode(Int.self, forKey: .status)) ?? -1
        // status에는 데이터가 안 들어올 리가 없다!
        success = (try? values.decode(Bool.self, forKey: .success)) ?? false
        message = (try? values.decode(String.self, forKey: .message)) ?? ""
        data = (try? values.decode(T.self, forKey: .data)) ?? nil
        // nil 안 넣어주면, 뭘 넣어주는지 몰라서 오류남.
    }
    
}

struct TokenData: Codable {
    // 디코딩용 -> Decodable, 인코딩용 -> Encodable
    var jwt: String
}
