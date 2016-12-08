//
//  CreateQuoteViewController.swift
//  QuotePro
//
//  Created by Shahab Chaouche on 2016-12-07.
//  Copyright © 2016 Shahab Chaouche. All rights reserved.
//

import UIKit
import Nuke

class CreateQuoteViewController: UIViewController, NetworkDelegate {
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            }
    
    func populateView(with quote:Quote) {
        
        print(quote.quoteText, quote.quoteAuthor)
        
        DispatchQueue.main.async {
            self.authorLabel.text = quote.quoteAuthor
            self.quoteLabel.text = quote.quoteText
        }
    }
    
    @IBAction func generateNewQuote(_ sender: Any) {
        
        let networkManager =  NetworkManager()
        networkManager.fetchQuote()
        networkManager.delegate = self

    }

    @IBAction func generateImage(_ sender: Any) {
        self.image.image = nil
        guard let url = URL(string :"https://unsplash.it/200/300/?random") else { return }

        do {
            let quoteImage = try UIImage(data: Data(contentsOf: url))
            image.image = quoteImage
        } catch {
            print("Could not get image")
        }
        
//        Nuke.loadImage(with: url, into: image)

//        Nuke.taskWithURL(url) { response in
//            switch response {
//            case let .Success(image, responseInfo):
//                
//            case let .Failure(error):
//                print("STUFF")
//            }
//            }.resume()
        
    }


}
