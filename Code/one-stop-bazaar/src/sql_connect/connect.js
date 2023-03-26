const mysql = require('mysql');

// create a connection to the database
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Pam@2302',
  database: 'online retail store'
});

// connect to the database
connection.connect((err) => {
  if (err) throw err;
  console.log('Connected to the database!');
});

// perform a query
connection.query('SELECT * FROM category', (err, results, fields) => {
  if (err) throw err;
  console.log(results);
});

// close the connection
connection.end();
