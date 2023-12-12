if (process.env.NODE_ENV != 'production') {
    require('dotenv').config()
}

const sql = require('mssql/msnodesqlv8');
const db_server = process.env.DB_SERVER;
const db_name = process.env.DB_NAME;

const config = {
    connectionString: `Server=${db_server};Database=${db_name};Trusted_Connection=yes;Driver={SQL Server};`,
};

const poolPromise = new sql.ConnectionPool(config);

poolPromise.connect()
    .then(() => {
        console.log('Connected to the database');
    })
    .catch((err) => {
        console.error('Database connection error:', err);
    });

module.exports = { poolPromise, sql };