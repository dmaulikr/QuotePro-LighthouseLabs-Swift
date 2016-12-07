//
//  Quote.swift
//  QuotePro
//
//  Created by Shahab Chaouche on 2016-12-07.
//  Copyright © 2016 Shahab Chaouche. All rights reserved.
//

import Foundation

class Quote: NSObject {
    let quoteText: String
    let quoteAuthor: String
    init(quoteText: String, quoteAuthor: String) {
        self.quoteText = quoteText
        self.quoteAuthor = quoteAuthor
        super.init()
    }
    
}
