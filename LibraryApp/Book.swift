//
//  Book.swift
//  LibraryApp
//
//  Created by Yerkezhan Zheneessova on 27.05.2024.
//

import Foundation

class Book{
    
    var name: String
    var ISBN: String
    var author: String
    
    init(name: String, ISBN: String, author: String) {
        self.name = name
        self.ISBN = ISBN
        self.author = author
    }
}
