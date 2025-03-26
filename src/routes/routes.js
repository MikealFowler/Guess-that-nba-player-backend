const express = require('express');
const router = express.Router();
const { getRandomPlayer, onePlayer, allPlayers } = require('../utils/playerFunctions.js');

router.get('/randomplayer', async (req, res) => {
    try {
        const player = await getRandomPlayer();
        if (!player) {
            return res.status(404).send({ error: 'Try again' });
        }
        res.send(player);
    } catch (error) {
        console.log(error)
    }
})

router.get('/player/:id', async (req, res) => {
    try {
        const id = parseInt(req.params.id)
        const player = await onePlayer(id);
        if (!player) {
            return res.status(404).send({ error: 'Player not found' });
        }
        res.send(player);
    } catch (error) {
        console.log(error)
    }
})

router.get('/allplayers', async (req, res) => {
    try {
        const players = await allPlayers();
        if(!players) {
            return res.status(404).send({ error: 'Players not found' });
        }
        res.send(players);
    } catch (error) {
        console.log(error)
    }
})

module.exports = router;