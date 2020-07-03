//
//  NetworkRouter.swift
//  NetworkLayer
//
//  Created by Mac-145-Pranay-Pawar on 24/09/18.
//  Copyright © 2018 Mac-145-Pranay-Pawar. All rights reserved.
//

import Foundation

public typealias NetworkRouterCompletion = (_ data: Data?, _ response: URLResponse?, _ error: Error?) -> ()

protocol NetworkRouter: class {
    associatedtype EndPoint : EndPointType
    
    func request(_ route: EndPoint, completion:@escaping NetworkRouterCompletion)
    
    func cancel()
}
