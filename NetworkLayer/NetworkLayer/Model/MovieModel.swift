//
//  MovieModel.swift
//  NetworkLayer
//
//  Created by Mac-145-Pranay-Pawar on 08/10/18.
//  Copyright © 2018 Mac-145-Pranay-Pawar. All rights reserved.
//

import Foundation

struct MovieApiResponse {
    let page: Int
    let numberOfResults: Int
    let numberOfPages: Int
    let movies: [Movie]
}
