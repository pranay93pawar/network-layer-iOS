//
//  ViewController.swift
//  NetworkLayer
//
//  Created by Mac-145-Pranay-Pawar on 21/09/18.
//  Copyright © 2018 Mac-145-Pranay-Pawar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var networkManager: NetworkManager! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        networkManager.getNewMovies(page: 1) { (movies, error) in
            
            print(movies)
            print(error)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

