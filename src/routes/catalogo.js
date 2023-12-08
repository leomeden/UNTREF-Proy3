const express = require('express');
const router = express.Router();

const ViewCompleto = require('../models/viewcompleto');
const { Op } = require("sequelize");

// Sirve View completa del catalogo
router.get("/", async (req, res) => {
    try {
        const contenido = await ViewCompleto.findAll();
        if(!contenido) {
            res.status(404).send({ menssage: `El catalogo no posee datos cargados` });
            return
        }
        res.status(200).send(contenido);
    } catch (error) {
        return res.status(500).send(error);
    }
    
    
});

// Sirve View item por id del catalogo
router.get("/:id", async (req, res) => { 
    try {
        const id = req.params.id
        if(isNaN(id)) {
            res.status(400).send({ menssage: "El id debe ser un número" });
            return
        }
        const item = await ViewCompleto.findByPk(id)
        if(!item) {
            res.status(404).send({ menssage: `El id ${id} no existe` });
            return
        }
    res.status(200).send(item);   
    } catch (error) {
        return res.status(500).send(error);
    }
});

// Sirve View items por nombre o parte de nombre
router.get("/nombre/:nombre", async (req, res) => { 
    try {
        const nombre = req.params.nombre
        const item = await ViewCompleto.findAll( { where: { titulo: { [Op.substring]: nombre } }});
        res.status(200).send(item);
    } catch (error) {
        return res.status(500).send(error);
    }
});

// Sirve View items por genero
router.get("/genero/:genero", async (req, res) => { 
    try {
        const genero = req.params.genero
        const item = await ViewCompleto.findAll( { where: { genero: { [Op.substring]: req.params.genero} } });
        res.status(200).send(item);
    } catch (error) {
        return res.status(500).send(error);
    }
});

// Sirve View items por categoria
router.get("/categoria/:categoria", async (req, res) => { 
    try {
        const item = await ViewCompleto.findAll( { where: { categoria: { [Op.like]: req.params.categoria} } });
        res.status(200).send(item);
    } catch (error) {
        return res.status(500).send(error);
    }
});

// Sirve View items por actor
router.get("/actor/:actor", async (req, res) => { 
    try {
        const item = await ViewCompleto.findAll( { where: { reparto: { [Op.substring]: req.params.actor} } });
        res.status(200).send(item);
    } catch (error) {
        return res.status(500).send(error);
    }
});

module.exports = router;
