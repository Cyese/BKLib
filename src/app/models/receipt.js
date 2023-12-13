const {poolPromise, sql} = require('../config/database')

class Receipt {
    async loadReceipt(Receipt) {
        try {
            const queryString = 'SELECT id, state, date_exported, id_librarian FROM Receipt';
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
}

module.exports = new Receipt;