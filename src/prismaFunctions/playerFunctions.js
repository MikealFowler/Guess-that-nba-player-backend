const { PrismaClient } = require('@prisma/client');

const prisma = new PrismaClient();

async function allPlayers() {
    const players = await prisma.player.findMany()
    console.log(players)

}

async function onePlayer() {
    const player = await prisma.player.findUnique({
        where: {
            id: 1
        }
    })
    console.log(player)

}

async function getRandomPlayer() {
    const allPlayers = await prisma.player.findMany();
    const randomPlayer = allPlayers[Math.floor(Math.random() * allPlayers.length)];
    console.log(randomPlayer);
    return randomPlayer;
}

module.exports = {
    allPlayers,
    onePlayer,
    getRandomPlayer
}