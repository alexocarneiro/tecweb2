const db = require('../../banco/dbConexao')


module.exports = class NutrientesModel{

    static getTodos(callback){

      return  db.query("SELECT * FROM nut_nutrientes", callback)
    }


    static getId(id, callback) {
        return db.query("SELECT * FROM nut_nutrientes WHERE NUT_NUTRIENTES_ID = ?", [id], callback)
    }

    static adicionar(nutrientes, callback) {
        return db.query("INSERT INTO nut_nutrientes NUT_NOME) VALUES(?)",
            [nutrientes.NUT_NOME], callback);
    }

    static deletar(id, callback) {
        return db.query("DELETE FROM nut_nutrientes WHERE NUT_NUTRIENTES_ID = ?",
            [id], callback)
    }

    static editar(nutrientes, callback) {
        return db.query("UPDATE nut_nutrientes SET NUT_NOME = ?  WHERE ALI_ALIMENTOS_ID = ?",
        [nutrientes.NUT_NOME], callback)
    }




};