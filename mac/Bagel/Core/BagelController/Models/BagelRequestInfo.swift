//
//  BagelRequestInfo.swift
//  Bagel
//
//  Created by Yagiz Gurgul on 02/09/2018.
//  Copyright © 2018 Yagiz Lab. All rights reserved.
//

import Cocoa

typealias KeyValue = [String: String]

extension String {
    
    var base64Data: Data? {
        
        return Data(base64Encoded: self, options: .ignoreUnknownCharacters)
    }
}

extension Dictionary where Key == String, Value == String {
    
    func toKeyValueArray() -> [KeyValue] {
        
        var array = [KeyValue]()
        
        for key in self.keys {
            
            array.append([key : self[key]!])
        }
        
        return array
    }
    
    var firstKey: String? {
        return self.keys.first
    }
    
    var firstValue: String? {
        return self.values.first
    }
}

class BagelRequestInfo: Codable {

    var url: String?
    var requestHeaders: KeyValue?
    var requestBody: String?
    var requestMethod: String?
    
    var responseHeaders: KeyValue?
    var responseData: String?
    
    var statusCode: String?
    
    var startDate: Date?
    var endDate: Date?
}