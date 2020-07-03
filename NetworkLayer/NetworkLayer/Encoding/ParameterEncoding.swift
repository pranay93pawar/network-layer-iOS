//
//  ParameterEncoding.swift
//  NetworkLayer
//
//  Created by Mac-145-Pranay-Pawar on 24/09/18.
//  Copyright © 2018 Mac-145-Pranay-Pawar. All rights reserved.
//

import Foundation

public typealias Parameters = [String: Any]

public protocol ParameterEncoder {
    
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
    
}

public enum NetworkError: String,Error {
    case parametersNil = "Parameters were nil."
    case encodingFail = "Parameter encoding failed."
    case missingURL = "URL is nil."
}

