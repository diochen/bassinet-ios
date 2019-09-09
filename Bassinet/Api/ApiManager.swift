//
//  ApiManager.swift
//  Bassinet
//
//  Created by Dio Chen on 2019/9/9.
//  Copyright © 2019 i_jhuhuchen. All rights reserved.
//

import UIKit
import Alamofire


typealias Handler = (Error?, String?) -> Void

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
    
    
    func call<T>(request:BaseReq, handler: @escaping (Swift.Result<T, ApiNetworkError>) -> Void) where T: Codable {
        debugPrint(request.getURL());
        AF.request(request.getURL()).response { response in
            
            do {
                guard let jsonData = response.data else {
                    throw ApiNetworkError(title: "Error", body: "No data")
                }
                let result = try JSONDecoder().decode(T.self, from: jsonData)
                handler(.success(result))
            } catch {
                if let error = error as? ApiNetworkError {
                    return handler(.failure(error))
                }
                
                //handler(.failure(self.parseApiError(data: response.data)))
                handler(.failure(ApiNetworkError(title: "Error", body: "unknown")))
            }
        }
    }
}
