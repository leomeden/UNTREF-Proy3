const dotenv = require('dotenv');
dotenv.config();
const express = require('express');

const sequelize = require('./conection/conection');
const Categorias = require('./models/categorias');

const rutasCatalogo = require('./routes/catalogo')



const server = express();

//Middlewares
server.use(express.json());

//Middleware rutas Catalogo
server.use('/catalogo', rutasCatalogo)


server.get("/categorias", async (req, res) => {
    try {
        const categorias = await Categorias.findAll({attributes: ["nombre_categoria"]});
        res.status(200).send(categorias);
    } catch (error) {
        return res.status(500).send(error);
    }
});


// Control de rutas inexistentes
server.use('*', (req, res) => {
    res.status(404).send({error: `La URL indicada no existe en este servidor`});
});


sequelize.authenticate().then(() => {
    sequelize.sync({ force: false }).then(() => {
        server.listen(process.env.PORT, process.env.HOST, () => {
            console.log(`El servidor está escuchando en: http://${process.env.HOST}:${process.env.PORT}`);
        });
    }).catch(() => {
        console.log('Hubo un problema con la sincronización de la base de datos');
    })        
}).catch(() => {
    console.log('Hubo un problema con la autenticacion de la base de datos');
});
