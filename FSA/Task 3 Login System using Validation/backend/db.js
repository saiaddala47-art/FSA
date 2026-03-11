const sql = require("mssql");

const config = {
  server: "localhost\\SQLEXPRESS",
  database: "AuthDB",
  options: {
    trustServerCertificate: true,
    trustedConnection: true
  }
};

module.exports = { sql, config };
