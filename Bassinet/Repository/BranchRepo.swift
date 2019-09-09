//
//  BranchRepo.swift
//  Bassinet
//
//  Created by Dio Chen on 2019/9/8.
//  Copyright © 2019 i_jhuhuchen. All rights reserved.
//
import UIKit
import Foundation

class BranchRepo: NSObject {
    public func getBranchList(){
     
        ApiManager.shared.call(request: BranchListReq()) { (res: Swift.Result<GenericResponseList<Branch>, ApiNetworkError>) in
            switch res {
            case .success(let data):
                debugPrint(data)
                //self.user.value = user
                break
            case .failure(let message):
                //self.alertMessage.value = message
                debugPrint("==============")
                debugPrint(message)
                debugPrint("==============")
                break
            }
        }
    }
}
