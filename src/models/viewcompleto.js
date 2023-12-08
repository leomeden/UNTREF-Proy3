const { DataTypes } = require('sequelize');
const sequelize = require('../conection/conection');

const ViewCompleto = sequelize.define('ViewCompleto', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    poster: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    titulo: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    categoria: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    genero: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    resumen: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    temporadas: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    reparto: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    trailer: {
        type: DataTypes.STRING,
        allowNull: false,
    }

}, {
  tableName: 'viewcompleto',
  timestamps: false,
});

module.exports = ViewCompleto;