const express = require('express');
const router = express.Router();
const port = 3000
const { getRandomPlayer, onePlayer, allPlayers } = require('../utils/playerFunctions.js');

router.get('/randomplayer', async (req, res) => {
    try {
        const player = await getRandomPlayer();
        res.send(player);
    } catch (error) {
        console.log(error)
    }

})

router.get('/player/:id', async (req, res) => {
    try {
        const id = parseInt(req.params.id)
        const player = await onePlayer(id);
        res.send(player);
    } catch (error) {
        console.log(error)
    }
})

router.get('/allplayers', async (req, res) => {
    try {
        const players = await allPlayers();
    res.send(players);
    } catch (error) {
        console.log(error)
    }
})

module.exports = router;