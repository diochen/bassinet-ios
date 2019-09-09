//
//  ApiNetworkError.swift
//  Bassinet
//
//  Created by i_jhuhuchen on 2019/9/9.
//  Copyright © 2019 i_jhuhuchen. All rights reserved.
//

import Foundation


class ApiNetworkError: Error {
    
    // MARK: - Vars & Lets
    
    var title = ""
    var body = ""
    
    // MARK: - Intialization
    
    init(title: String, body: String) {
        self.title = title
        self.body = body
    }
    
}
