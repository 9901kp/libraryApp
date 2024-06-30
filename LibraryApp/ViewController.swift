//
//  ViewController.swift
//  LibraryApp
//
//  Created by Yerkezhan Zheneessova on 27.05.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var librarierTextField: UITextField!
    @IBOutlet weak var bookTextField: UITextField!
    @IBOutlet weak var memberTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    let libraryMember1 = LibraryMember(id: "123", name: "Yerkezhan", phone: "234567")
    let libraryMember2 = LibraryMember(id: "456", name: "Emir", phone: "23454")
    
    let book1 = Book(name: "Alchemist", ISBN: "123", author: "John Smith")
    let book2 = Book(name: "Harry Potter", ISBN: "456", author: "Rowling")
    
    let member1 = Member(id: "123", name: "Muhammed", phoneNumber: "1234", borrowedBook: [])
    let member2 = Member(id: "456", name: "Daniil", phoneNumber: "1234", borrowedBook: [])
    
    //library - это экземпляр класса Library и называется объект library
    let library = Library(name: "Central", address: "Kunaeva 50", libraryMember: [] , book: [], member: [])
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        library.libraryMember.append(contentsOf: [libraryMember1, libraryMember2])
        library.book.append(contentsOf: [book1, book2])
        library.member.append(contentsOf: [member1, member2])
 
        
    }

    @IBAction func borrowBook(_ sender: UIButton) {
        
        guard let memberId = memberTextField.text else {return}
        guard let bookId = bookTextField.text else {return}
        guard let librarierId = librarierTextField.text else {return}
        
        resultLabel.text = borrowBook(memberId: memberId, bookId: bookId, librarierId: librarierId)
        
        
    }
    
    func borrowBook(memberId: String, bookId: String, librarierId: String) -> String {
        
        let result = "\(library.findMember(memberID: memberId)) borrowed \(library.findBook(bookID: bookId))"
        print(result)
        return result
    }
    
}

