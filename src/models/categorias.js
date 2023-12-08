const { DataTypes } = require('sequelize');
const sequelize = require('../conection/conection');

const Categorias = sequelize.define('Categorias', {
    id_categoria: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    nombre_categoria: {
        type: DataTypes.STRING,
        allowNull: false,
    }
}, {
  tableName: 'categorias',
  timestamps: false,
});

module.exports = Categorias;
