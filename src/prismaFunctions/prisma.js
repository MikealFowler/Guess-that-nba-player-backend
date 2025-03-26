require('dotenv').config();
const { PrismaClient } = require('@prisma/client');

const prisma = new PrismaClient();

async function allPlayers() {
    const players = await prisma.player.findMany()
    console.log(players)
    
}

allPlayers();