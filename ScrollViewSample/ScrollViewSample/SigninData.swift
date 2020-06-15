//
//  SigninData.swift
//  ScrollViewSample
//
//  Created by 이지윤 on 2020/05/16.
//  Copyright © 2020 이지윤. All rights reserved.
//

import Foundation


struct SigininData: Codable {
    var status: Int
    var success: Bool
    var message: String
    var data: TokenData?
    enum CodingKeys: String, CodingKey { case status = "status"
        case success = "success"
        case message = "message"
        case data // 안써도 된다.
        // 이거 처리 제대로 안 해주면 난리남!!!!!!
        // 케이스와 rawvalue가 다를 때만 저렇게 스트링값을 쓰고 아니면 그냥 안 써도 된다.
    }
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        status = (try? values.decode(Int.self, forKey: .status)) ?? -1
        // status에는 데이터가 안 들어올 리가 없다!
        success = (try? values.decode(Bool.self, forKey: .success)) ?? false
        message = (try? values.decode(String.self, forKey: .message)) ?? ""
        data = (try? values.decode(TokenData.self, forKey: .data)) ?? nil
        // nil 안 넣어주면, 뭘 넣어주는지 몰라서 오류남.
    }
    
}

struct TokenData: Codable {
    // 디코딩용 -> Decodable, 인코딩용 -> Encodable
    var jwt: String
}
