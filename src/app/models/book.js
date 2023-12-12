const {poolPromise, sql} = require('../config/database');

class Book {
    async loadByCatergory(Catergory) {
        try {
            const queryString = 'SELECT author, total_book, book_title_name FROM Book_title b JOIN (SELECT * FROM Belongto_category WHERE name_category = @Catergory) bl ON b.id = bl.id_book';
            const pool = await poolPromise;
            const result = await pool.request()
                .input('Catergory', sql.NVarChar, Catergory)
                .query(queryString);
            console.log(result.recordset);
            return result.recordset;
        } catch (error) {
            console.log(error);
        }
    }
}

module.exports = new Book;