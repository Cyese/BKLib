const {poolPromise, sql} = require('../config/database');

class User {
    async checkUserEmail(email) {
        try {
            const queryString = 'SELECT TOP 1 * FROM [User] WHERE email = @Email';
            const pool = poolPromise;
            const result = await pool.request()
                .input('Email', sql.NVarChar, email)
                .query(queryString);
            return result.recordset;
        } catch (error) {
            console.log(error);
        }
    }
    async createUser(fname, minit, lname, day, month, year, email, phonenumber, address) {
        const birthday = `${year}-${month}-${day}`;
        const queryString = 'INSERT INTO [User] (fname, minit, lname, bdate, email, address) VALUES (@Fname, @Minit, @Lname, @Birthday, @Email, @Address)'; 
        const pool = poolPromise;
        const result = await pool.request()
            .input('Fname', sql.NVarChar, fname)
            .input('Minit', sql.NVarChar, minit)
            .input('Lname', sql.NVarChar, lname)
            .input('Birthday', sql.Date, birthday)
            .input('Email', sql.NVarChar, email)
            .input('Phonenumber', sql.NVarChar, address)
            .query(queryString);
        // const queryString2 = 'INSERT INTO [Phone_number] (number, email) VALUES (@Phonenumber, @Email)';
        console.log('You dumpass')
    }
    async getPointHisory(id) {
        try {
            const queryString = "SELECT * FROM gethistoryPoint(@Id, '2023-11-01', '2023-12-13') ORDER BY ngay DESC";
            const pool = poolPromise;
            const result = await pool.request()
                .input('Id', sql.Int, id)
                .query(queryString);
            return result.recordset;
        } catch (error) {
            console.log(error);
        }
    }
}

module.exports = new User;