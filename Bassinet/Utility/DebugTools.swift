//
//  DebugTools.swift
//  Bassinet
//
//  Created by Dio Chen on 2019/9/8.
//  Copyright © 2019 i_jhuhuchen. All rights reserved.
//

import UIKit

public func DPrint(_ message: Any, file: String = #file, function: String = #function, line: Int = #line ) {
    #if DEBUG
    print("⇢[\(DebugTools.shared.stringWithSecFromDate(Date()))] [\((file as NSString).lastPathComponent)] [\(function)] [\(line)]: \(message) ")
    #endif
}
class DebugTools {
    
    static let shared = DebugTools()
    
    func stringWithSecFromDate(_ time: Date) -> String {
        let formatter = Foundation.DateFormatter()
        formatter.timeZone = TimeZone.autoupdatingCurrent
        formatter.dateFormat = "yyyy/MM/dd/ss"
        let stringOfDate = formatter.string(from: time)
        return stringOfDate
    }
    
}
