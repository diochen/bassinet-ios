//
//  ErrorResponse.swift
//  Bassinet
//
//  Created by Dio Chen on 2019/9/8.
//  Copyright © 2019 i_jhuhuchen. All rights reserved.
//

import Foundation

struct ErrorResponse: Codable {
    
    var returnCode: Int?
    var returnCodeTitle: String?
    var returnCodeDesc: String?
    var returnCodeLevel: Int?
}
