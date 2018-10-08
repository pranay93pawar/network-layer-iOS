//
//  HTTPTask.swift
//  NetworkLayer
//
//  Created by Mac-145-Pranay-Pawar on 21/09/18.
//  Copyright © 2018 Mac-145-Pranay-Pawar. All rights reserved.
//

import Foundation

public typealias HTTPHeaders = [String:String]

public enum HTTPTask {
    
    case request
    
    case requestParameters(bodyParameters: Parameters?, urlParameters: Parameters?)
    
    case requestParametersAndHeaders(bodyParameters: Parameters?, urlParameters: Parameters?, additionalHeaders: HTTPHeaders?)
    
    //can add for case downnload,upload
    
}
