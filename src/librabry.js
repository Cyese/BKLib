const mongoose = require('mongoose');
const {Schema} = mongoose;

mongoose.connect("mongodb://127.0.0.1:27017/Library");

const Book = new Schema({
    title : {type : String, require : true},
    author : {type : String, require : true},
    publishYear : {type : Number, require : true},
    description : String,
    genre : [String],
    quantity : Number,
    available : Number,
    Borrow_List : [String]
})

Book.method.get = ()  => {return {
    title : this.title,
    author : this.author,
    publishYear : this.publishYear
}}


Book.method.addDescription = function(description) {
    this.description = description;
}
Book.method.modify = function(FieldToModify, value){
    if (this[FieldToModify] == undefined){
        throw "Unexpected data to modify!"
    }
    this[FieldToModify] = value;
}
Book.method.info = function(){
    return this.toString();
}
Book.method.addGenre = function(gerne){
    this.genre.push(gerne);
}
Book.method.Genre = function(){
    return this.genre;
}

Book.method.getBorrowingList = () =>  {return this.Borrow_List}

Book.method.getUnavailable = () => {return this.quantity-this.available}

const BookManager = mongoose.model('Manager', Book)

BookManager.statics.returnBook = function returnBook (title, username){
    BookManager.findOneAndUpdate({title: title}, 
        {$pop : {Borrow_List: username}},
        {$inc : {available: 1}},
        (err,doc) => {if (err) throw err})
}

BookManager.statics.borrowBook = function borrowBook(title){
    BookManager.findOneAndUpdate({title: title}, 
        {$push : {Borrow_List: username}}, 
        {$dec : {available : 1}},
        (err,doc) => {if (err) throw err; return "You have borrow the book"})
}

BookManager.statics.sortByGenre = function sortByGenre (genre) {
    return BookManager.find({genre : {$in : [genre]}}).then((book) => book.get)
}

BookManager.statics.modifyQuantity = function modifyQuantity (title, valueToModify) {
    BookManager.findOneAndUpdate({title: title}, {$inc :{quantity : valueToModify}}, {$inc : {available: valueToModify}}, (err,doc) => {
        if (err) throw err
        else return "Successful save"
    })
}
const Library = mongoose.model('Manager', BookManager)

Library.method.addBook = (title, author, publishYear) => {
    const doc = new BookManager({
        title : title,
        author: author,
        publishYear : publishYear
    })
    doc.save((err) => {
        if (err) throw err
    })
    return doc.Book.info
}

Library.statics.getGenre = function getGenre (genre) {return BookManager.sortByGenre(genre)}
Library.statics.modifyQuantity = function modifyQuantity (title, valueToModify) {return BookManager.modifyQuantity(title,valueToModify)} 
Library.statics.borrowBook = function borrowBook (title,username)  {return BookManager.borrowBook(title,username)}
Library.statics.returnBook = function returnBook (title,username) {return BookManager.returnBook(title,username)}
Library.statics.modifyDescription = function modifyDescription (title, description) {BookManager.findOneAndUpdate({title: title}, (err, doc) => {
    if (err) throw err
    doc.addDescription(description)
    doc.save((err) => {if (err) throw err})
})}
Library.method.getBorrowingList = function getBorrowingList (title) {return BookManager.findOne({title : title}, (err,doc) => {
    if (err) throw err
    return doc.getBorrowingList()
})}
Library.method.addGenre = function addGenre (title,genre) {BookManager.findOneAndUpdate({title: title}, (err,doc) =>{
    if (err) throw err
    doc.addGenre(genre)
    doc.save((err) => {if (err) throw err})
})}

module.exports=Library
