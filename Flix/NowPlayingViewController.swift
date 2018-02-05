//
//  NowPlayingViewController.swift
//  Flix
//
//  Created by Tevin Lewis on 2/4/18.
//
//

import UIKit

class NowPlayingViewController: UIViewController {

    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed")
        let request = URLRequest(url: <#T##URL#>, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: <#T##TimeInterval#>)
        
        
    


    }

    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
