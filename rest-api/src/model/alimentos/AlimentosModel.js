const db = require('../../banco/dbConexao')


module.exports = class AlimentosModel{

    static getTodos(callback){

      return  db.query("SELECT * FROM ali_alimentos", callback)
    }


    static getId(id, callback) {
        //return db.query("SELECT * FROM ali_alimentos WHERE ALI_ALIMENTOS_ID = ?", [id], callback)
        return db.query("SELECT ALI.ALI_NOME, NUT.NUT_NOME,VAN.VAN_QUANTIDADE FROM ALI_ALIMENTOS ALI JOIN VAN_VALORES_NUTRICIONAIS VAN ON VAN.VAN_ALI_ALIMENTOS_ID = ALI.ALI_ALIMENTOS_ID JOIN NUT_NUTRIENTES NUT ON NUT.NUT_NUTRIENTES_ID = VAN.VAN_ALI_ALIMENTOS_ID WHERE ALI.ALI_ALIMENTOS_ID = ?", [id], callback)
    }

   
    static adicionar(alimentos, callback) {
        return db.query("INSERT INTO ali_alimentos (ALI_INDICE_GLICEMICO, ALI_NOME, ALI_PORCAO_GRAMAS) VALUES(?, ?, ?)",
            [alimentos.ALI_INDICE_GLICEMICO, alimentos.ALI_NOME, alimentos.ALI_PORCAO_GRAMAS], callback);
    }

    static deletar(id, callback) {
        return db.query("DELETE FROM ali_alimentos WHERE ALI_ALIMENTOS_ID = ?",
            [id], callback)
    }

    static editar(alimentos, callback) {
        return db.query("UPDATE ali_alimentos SET ALI_INDICE_GLICEMICO = ?, ALI_NOME = ?, ALI_PORCAO_GRAMAS = ?  WHERE ALI_ALIMENTOS_ID = ?",
        [alimentos.ALI_INDICE_GLICEMICO, alimentos.ALI_NOME, alimentos.ALI_PORCAO_GRAMAS], callback)
    }




};