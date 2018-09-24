//
//  Router.swift
//  NetworkLayer
//
//  Created by Mac-145-Pranay-Pawar on 24/09/18.
//  Copyright © 2018 Mac-145-Pranay-Pawar. All rights reserved.
//

import Foundation

class Router<EndPoint: EndPointType>: NetworkRouter {
    
    private var task: URLSessionTask?
    
    func request(_ route: EndPoint, completion:@escaping NetworkRouterCompletion) {
        
        let session = URLSession.shared
        
        do {
            
            let request = try self.buildRequest(from: route)
            task = session.dataTask(with: request, completionHandler: { (data, response, error) in
                completion(data, response, error)
            })
        } catch  {
           completion(nil, nil, error)
        }
        
    }
    
    func cancel() {
        
    }
    
    func buildRequest(from route: EndPoint) throws -> URLRequest {
        
        
        return URLRequest(url: <#T##URL#>)
    }
    
}
