const {poolPromise, sql} = require('../config/database');

class Book {
    async loadBook(Book) {
        try {
            const queryString = 'SELECT b.id, br.name, b.status, b.publish, bt.book_title_name FROM (Book as b Join Book_title as bt On b.id_book_title = bt.id) JOIN Branch as br ON id_branch = br.id';
            const pool = await poolPromise;
            const result = await pool.request()
                .query(queryString);
            // console.log(result.recordset);
            return result.recordset;
        } catch (error) {
            console.log(error);
            // return new Exception(error);
        }
    }

    async loadByCatergory(Catergory) {
        try {
            const queryString = 'SELECT id, author, total_book, book_title_name FROM (Book_title b JOIN (SELECT * FROM Belongto_category WHERE name_category = @Catergory) bl ON b.id = bl.id_book)';
            const pool = await poolPromise;
            const result = await pool.request()
                .input('Catergory', sql.NVarChar, Catergory)
                .query(queryString);
            // console.log(result.recordset);
            return result.recordset;
        } catch (error) {
            console.log(error);
            // return new Exception(error);
        }
    }
    async getBookLocation(id) {
        try {
            // console.log(id);
            const queryString = 'SELECT b.publish AS publish_year, br.name AS branch_name, br.address AS branch_address, b.status AS status FROM (SELECT * FROM Book WHERE id_book_title = @Id) b JOIN Branch br ON b.id_branch = br.id';
            const pool = await poolPromise;
            const result = await pool.request()
                .input('Id', sql.Int, id)
                .query(queryString);
            const queryString2 = 'SELECT author, book_title_name, min_age FROM Book_title WHERE id = @Id';
            const result2 = await pool.request()
                .input('Id', sql.Int, id)
                .query(queryString2);
            console.log(result);
            return {list : result.recordset, info : result2.recordset[0]};
        } catch (error) {
            console.log(error);
            // return new Exception(error);
        }
    }
    async search(string){
        try {
            const queryString = "EXEC findBook @search_term = @input";
            const pool = await poolPromise;
            const result = await pool.request()
                .input('input', sql.NVarChar, string)
                .query(queryString);
            // console.log(result);
            return result.recordset;
        } catch (error) {
            console.log(error);
        }
    }
}

module.exports = new Book;