//
//  URLParameterEncoder.swift
//  NetworkLayer
//
//  Created by Mac-145-Pranay-Pawar on 24/09/18.
//  Copyright © 2018 Mac-145-Pranay-Pawar. All rights reserved.
//

import Foundation

public struct URLParameterEncoder: ParameterEncoder {
    
    public static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        
        guard let url = urlRequest.url else {
            
            throw NetworkError.missingURL
        }
        
        if var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false), !parameters.isEmpty {
            
            urlComponents.queryItems = [URLQueryItem]()
            
            for (key, value) in parameters {
                let queryItem = URLQueryItem(name: key, value: "\(value)".addingPercentEncoding(withAllowedCharacters: .urlHostAllowed))
                
                urlComponents.queryItems?.append(queryItem)
            }
            
            urlRequest.url = urlComponents.url
        }
        
        if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
            urlRequest.setValue("Application/x-www-form-urlencoded; charset=utf-8", forHTTPHeaderField: "Content-Type")
        }
    }
    
}
