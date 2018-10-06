//
//  NetworkManager.swift
//  NetworkLayer
//
//  Created by Pranay Pawar on 06/10/18.
//  Copyright © 2018 Mac-145-Pranay-Pawar. All rights reserved.
//

import Foundation

struct NetworkManager {
    
    static let environment : NetworkEnvironment = .production
    static let MovieAPIKey = ""
    private let router = Router<MovieApi>()
}
