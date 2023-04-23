class Book {
    constructor(title, author, publish_year){
        this.title = title;
        this.author = author;
        this.publish_year = publish_year;
    }
    get info() {
        return this.title + ", writen by " + this.author+ " "+ this.publish_year;
    }
    add_description(description){this.description = description;}
    modify(field_to_modify, value){
        // Looking for wait to add a check for data
        if (this[field_to_modify] == undefined){
            throw "Unexpected data to modify!"
        }
        this[field_to_modify] = value
    }
    /* 
        To do:
        sneakpeak(): allow reading a first few paragraph
        and more i guess ~~
    */ 
}

// This is class for Document that is available to all
// class OpenDocument extends Book {}

// This is class for Document that required specified permission to access
// class PrivateDocument extends Book {}


class Librabry {
    constructor(){

    }


}






// Down here is a testing site ~~
const book1 = new Book("White fang", "Jack London", 1985);

try {
    book1.modify("publish_year", 1999)
} catch (error) {
    console.log(error);
} finally {
    console.log(book1.info);
}
