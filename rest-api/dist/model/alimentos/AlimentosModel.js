"use strict";

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var db = require('../../banco/dbConexao');

module.exports = function () {
    function AlimentosModel() {
        _classCallCheck(this, AlimentosModel);
    }

    _createClass(AlimentosModel, null, [{
        key: "getTodos",
        value: function getTodos(callback) {

            return db.query("SELECT * FROM ali_alimentos", callback);
        }
    }, {
        key: "getId",
        value: function getId(id, callback) {
            //return db.query("SELECT * FROM ali_alimentos WHERE ALI_ALIMENTOS_ID = ?", [id], callback)
            return db.query("SELECT ALI.ALI_NOME, NUT.NUT_NOME,VAN.VAN_QUANTIDADE FROM ALI_ALIMENTOS ALI JOIN VAN_VALORES_NUTRICIONAIS VAN ON VAN.VAN_ALI_ALIMENTOS_ID = ALI.ALI_ALIMENTOS_ID JOIN NUT_NUTRIENTES NUT ON NUT.NUT_NUTRIENTES_ID = VAN.VAN_ALI_ALIMENTOS_ID WHERE ALI.ALI_ALIMENTOS_ID = ?", [id], callback);
        }
    }, {
        key: "adicionar",
        value: function adicionar(alimentos, callback) {
            return db.query("INSERT INTO ali_alimentos (ALI_INDICE_GLICEMICO, ALI_NOME, ALI_PORCAO_GRAMAS) VALUES(?, ?, ?)", [alimentos.ALI_INDICE_GLICEMICO, alimentos.ALI_NOME, alimentos.ALI_PORCAO_GRAMAS], callback);
        }
    }, {
        key: "deletar",
        value: function deletar(id, callback) {
            return db.query("DELETE FROM ali_alimentos WHERE ALI_ALIMENTOS_ID = ?", [id], callback);
        }
    }, {
        key: "editar",
        value: function editar(alimentos, callback) {
            return db.query("UPDATE ali_alimentos SET ALI_INDICE_GLICEMICO = ?, ALI_NOME = ?, ALI_PORCAO_GRAMAS = ?  WHERE ALI_ALIMENTOS_ID = ?", [alimentos.ALI_INDICE_GLICEMICO, alimentos.ALI_NOME, alimentos.ALI_PORCAO_GRAMAS], callback);
        }
    }]);

    return AlimentosModel;
}();