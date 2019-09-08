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
        ApiManager.shared.get(request: BaseReq()) {(error, result) in
            
        }
    }
}
