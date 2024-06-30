//
//  Member.swift
//  LibraryApp
//
//  Created by Yerkezhan Zheneessova on 27.05.2024.
//

import Foundation

class Member{
    
    var id: String
    var name: String
    var phoneNumber: String
    var borrowedBook: [Book]
    
    init(id: String, name: String, phoneNumber: String, borrowedBook: [Book]) {
        self.id = id
        self.name = name
        self.phoneNumber = phoneNumber
        self.borrowedBook = borrowedBook
    }
    
    func borrowedBook(bookID: String, memberID: String){
        
    }
}
