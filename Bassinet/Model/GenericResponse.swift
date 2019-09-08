//
//  GenericResponse.swift
//  Bassinet
//
//  Created by Dio Chen on 2019/9/8.
//  Copyright © 2019 i_jhuhuchen. All rights reserved.
//

import Foundation

//struct GenericResponse<T:Codable>: ErrorResponse {
//
//    var data: T?
//}


// Array<Int>

struct GenericResponseOne<T:Codable>: Codable {
    
    var returnCode: Int?
    var returnCodeTitle: String?
    var returnCodeDesc: String?
    var returnCodeLevel: Int?
    var data: T?
}

struct GenericResponseList<T:Codable>: Codable {
    
    var returnCode: Int?
    var returnCodeTitle: String?
    var returnCodeDesc: String?
    var returnCodeLevel: Int?
    var data: [T]?
}
