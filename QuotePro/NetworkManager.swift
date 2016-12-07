//
//  NetworkManager.swift
//  QuotePro
//
//  Created by Shahab Chaouche on 2016-12-07.
//  Copyright © 2016 Shahab Chaouche. All rights reserved.
//

import Foundation

class NetworkManager {
    
    func fetchQuote() {
        
        // url
        let url = URL(string: "http://api.forismatic.com/api/1.0/?method=getQuote&lang=en&format=json")!
        // nsurlsession
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        let task = session.dataTask(with: url, completionHandler: { (data: Data?, response:URLResponse?, error:Error?) -> Void in
            
            // check response using guard
            
            let statusCode = (response as! HTTPURLResponse).statusCode
            
            guard statusCode == 200 else {
                
                print("statuscode: \(statusCode)")
                
                return
            }
            
            guard error == nil else {
                
                print("error: \(error)")
                return
            }
            
            
            guard let data = data else {
                
                // print that data is nil
                return
            }
            
            // down here we have the data as an unwrapped object
            
            
            // deserialize the json
            
            
            //  delegation, or a block
            
            
            
        })

        task.resume()
        
        // handle the callback
        
        
        
        
        
        
    }
    
    
    
}
