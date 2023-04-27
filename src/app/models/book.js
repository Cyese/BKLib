const mongoose = require('mongoose'), Schema = mongoose.Schema;

// mongoose.connect("mongodb://127.0.0.1:27017/Library");

const BookSchema = new Schema({
    title : {type : String, require : true},
    author : {type : String, require : true},
    publishYear : {type : Date},
    description : String,
    type : {
        type: String,
        enum: ['Entertainment', 'Document', 'Research', 'Megazine']
    },
    quantity : Number,
    available : Number,
    borrowList : [{username : String, dateBorrow : Date}]
})

const Book = mongoose.model('Book', BookSchema)
Book.method.info = function (){
    return {
        title : this.title,
        author : this.author,
        publishYear : this.publishYear,
        description : this.description,
        available : this.available
    }
}

module.exports=Book
