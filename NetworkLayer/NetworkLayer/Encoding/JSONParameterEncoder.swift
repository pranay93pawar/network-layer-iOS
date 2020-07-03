//
//  JSONParameterEncoder.swift
//  NetworkLayer
//
//  Created by Mac-145-Pranay-Pawar on 24/09/18.
//  Copyright © 2018 Mac-145-Pranay-Pawar. All rights reserved.
//

import Foundation

public struct JSONParameterEncoder: ParameterEncoder {
    
    public static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        
        let jsonAsData = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
        
        urlRequest.httpBody = jsonAsData
        
        if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        }
        
    }
    
}
