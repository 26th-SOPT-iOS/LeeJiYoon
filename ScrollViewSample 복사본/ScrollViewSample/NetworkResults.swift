//
//  NetworkResults.swift
//  ScrollViewSample
//
//  Created by 이지윤 on 2020/05/16.
//  Copyright © 2020 이지윤. All rights reserved.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case requestErr(T) // 요청은 제대로 갔지만, 유저의 잘못(비밀번호 틀림 등)으로 요청 에러가 발생한 것. -> 분기처리 할 수 있을 거임.
    case pathErr // 서버 내부 Url 잘못 쳤거나 이럴 때 path error
    case serverErr
    case networkFail
}
