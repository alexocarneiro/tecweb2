"use strict";

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var db = require('../../banco/dbConexao');

module.exports = function () {
    function DietasModel() {
        _classCallCheck(this, DietasModel);
    }

    _createClass(DietasModel, null, [{
        key: "getTodos",
        value: function getTodos(callback) {

            return db.query("SELECT * FROM die_dietas", callback);
        }
    }, {
        key: "getId",
        value: function getId(id, callback) {
            return db.query("SELECT * FROM die_dietas WHERE DIE_DIETAS_ID = ?", [id], callback);
        }
    }, {
        key: "adicionar",
        value: function adicionar(dietas, callback) {
            return db.query("INSERT INTO die_dietas (DIE_NOME, DIE_STATUS) VALUES(?, ?)", [dietas.DIE_NOME, dietas.DIE_STATUS], callback);
        }
    }, {
        key: "deletar",
        value: function deletar(id, callback) {
            return db.query("DELETE FROM die_dietas WHERE DIE_DIETAS_ID = ?", [id], callback);
        }
    }, {
        key: "editar",
        value: function editar(dietas, callback) {
            return db.query("UPDATE die_dietas SET DIE_NOME = ?, DIE_STATUS = ?  WHERE DIE_DIETAS_ID = ?", [dietas.DIE_NOME, dietas.DIE_STATUS], callback);
        }
    }]);

    return DietasModel;
}();