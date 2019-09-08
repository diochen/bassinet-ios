//
//  BaseReq.swift
//  Bassinet
//
//  Created by Dio Chen on 2019/9/8.
//  Copyright © 2019 i_jhuhuchen. All rights reserved.
//

import Foundation

class BaseReq{
    let url: String? = nil
    
    init() {}

    public func getURL() -> String {
        return "https://sogoapptest.sogo.com.tw/com/webservice/branchDataList"
    }
    
    public func getBody() -> String {
        return ""
    }
    
    public func getHeader() -> String {
        return ""
    }
}
