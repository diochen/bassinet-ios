//
//  ApiManager.swift
//  Bassinet
//
//  Created by Dio Chen on 2019/9/9.
//  Copyright © 2019 i_jhuhuchen. All rights reserved.
//

import UIKit
import Alamofire


typealias Handler = (Error?, String) -> Void

class ApiManager: NSObject {
    
    static let shared = ApiManager()
    override private init() {}
    
    // Mark: Interface
    func get(request:BaseReq,
                        compeletionHandler: Handler? = nil){
        AF.request("https://sogoapptest.sogo.com.tw/com/webservice/branchDataList").response { response in
            debugPrint(response)
            compeletionHandler?(nil, "success")
        }
    }
    
    
}
