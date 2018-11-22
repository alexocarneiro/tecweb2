"use strict";

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var db = require('../../banco/dbConexao');

module.exports = function () {
    function NutrientesModel() {
        _classCallCheck(this, NutrientesModel);
    }

    _createClass(NutrientesModel, null, [{
        key: "getTodos",
        value: function getTodos(callback) {

            return db.query("SELECT * FROM nut_nutrientes", callback);
        }
    }, {
        key: "getId",
        value: function getId(id, callback) {
            return db.query("SELECT * FROM nut_nutrientes WHERE NUT_NUTRIENTES_ID = ?", [id], callback);
        }
    }, {
        key: "adicionar",
        value: function adicionar(nutrientes, callback) {
            return db.query("INSERT INTO nut_nutrientes NUT_NOME) VALUES(?)", [nutrientes.NUT_NOME], callback);
        }
    }, {
        key: "deletar",
        value: function deletar(id, callback) {
            return db.query("DELETE FROM nut_nutrientes WHERE NUT_NUTRIENTES_ID = ?", [id], callback);
        }
    }, {
        key: "editar",
        value: function editar(nutrientes, callback) {
            return db.query("UPDATE nut_nutrientes SET NUT_NOME = ?  WHERE ALI_ALIMENTOS_ID = ?", [nutrientes.NUT_NOME], callback);
        }
    }]);

    return NutrientesModel;
}();