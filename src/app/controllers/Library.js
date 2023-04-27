const express = require('express')
const router = express.Router()
const Book = require ('../models/book')

class Library {
    static addDescription = (title, description) => {
        Book.findOneAndUpdate({title: title}, {$set : {description : description}}, (err,doc) => {if (err) throw err})
    }
    static addBook = (title, author, publishYear) => {
        const newBook = new Book({title : title, author: author, publishYear: publishYear})
        newBook.save((err) => {if (err) throw err});
    }
    static sortByType = (type) => {
        return Book.find({type : type}, (err,doc) => {
            if (err) throw err }) .then((books) => {books.info})
    }
    static borrowBook = (title, username) => {
        const book = Book.findOne({title: title})
        if (book.info.available < 1)
            return "Unable to borrow"
        else 
            Book.findOneAndUpdate({title : title}, 
                {$inc : {available : -1}}, 
                {$push : {borrowList : {name : username, dateBorrow: Date.now}}},
                (err, doc) => {if (err) throw err}    
            )
    }
    static returnBook = (title, username) => {
        Book.findOneAndUpdate({title :title}, 
            {$inc : {available : 1}},
            {$pop : {borrowList : {name : username}}},
            (err, doc) => {if (err) throw err} 
        )
    }
}
module.exports=Library
