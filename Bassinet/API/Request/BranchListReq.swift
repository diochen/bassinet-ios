//
//  BranchListReq.swift
//  Bassinet
//
//  Created by i_jhuhuchen on 2019/9/9.
//  Copyright © 2019 i_jhuhuchen. All rights reserved.
//

import Foundation


class BranchListReq: BaseReq {
    private let uri: String = "branchDataList"

    public override func getAPIPath() -> String {
        return uri;
    }
}
