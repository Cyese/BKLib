const Book=require('../models/book')


class bookController {
    index(req, res, next){
        res.render('Book/book')
    }

    create(req, res, next){
        res.render('Book/create')
    }

    store(req, res, next){
        // res.json(req.body)

        const book = new Book(req.body)
        book.save()

        res.send('Saved')
    }
}

module.exports = new bookController