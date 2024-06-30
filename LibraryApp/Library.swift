//
//  Library.swift
//  LibraryApp
//
//  Created by Yerkezhan Zheneessova on 27.05.2024.
//

import Foundation

class Library{
    
    var name: String = ""
    var address: String
    var libraryMember: [LibraryMember]
    var book: [Book]
    var member: [Member]
    
    init(name: String, address: String, libraryMember: [LibraryMember], book: [Book], member: [Member]) {
        self.name = name
        self.address = address
        self.libraryMember = libraryMember
        self.book = book
        self.member = member
    }
    
    func findMember(memberID: String)-> String{
        for m in member{
            if m.id == memberID{
                return m.name
            }
        }
        return  ""
    }
    
    func findBook(bookID: String) -> String{
        for b in book{
            if b.ISBN == bookID{
                return b.name
            }
        }
        return  ""
    }
    
}
