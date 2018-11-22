const db = require('../../banco/dbConexao')


module.exports = class DietasModel{

    static getTodos(callback){

      return  db.query("SELECT * FROM die_dietas", callback)
    }


    static getId(id, callback) {
        return db.query("SELECT * FROM die_dietas WHERE DIE_DIETAS_ID = ?", [id], callback)
    }

    static adicionar(dietas, callback) {
        return db.query("INSERT INTO die_dietas (DIE_NOME, DIE_STATUS) VALUES(?, ?)",
            [dietas.DIE_NOME, dietas.DIE_STATUS], callback);
    }

    static deletar(id, callback) {
        return db.query("DELETE FROM die_dietas WHERE DIE_DIETAS_ID = ?",
            [id], callback)
    }

    static editar(dietas, callback) {
        return db.query("UPDATE die_dietas SET DIE_NOME = ?, DIE_STATUS = ?  WHERE DIE_DIETAS_ID = ?",
        [dietas.DIE_NOME, dietas.DIE_STATUS], callback)
    }




};