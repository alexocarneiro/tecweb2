const mysql = require('mysql');

const conexao = mysql.createPool({
    host: 'cpanel0133.hospedagemdesites.ws',
    user: 'arietedi_nutri',
    password: 'Sabedoria321*_',
    database: 'arietedi_nutri'
});

module.exports = conexao;