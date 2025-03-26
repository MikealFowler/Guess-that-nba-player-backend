const request = require('supertest');
const app = require('../app'); // This works because we split app/server

describe('GET /api/randomplayer', () => {
    it('should return a random player object with an id', async () => {
        const res = await request(app).get('/api/randomplayer');

        expect(res.statusCode).toBe(200);
        expect(res.body).toHaveProperty('player_name');
        expect(res.body).toHaveProperty('points_avg');
        expect(res.body).toHaveProperty('assists_avg');
        expect(res.body).toHaveProperty('rebounds_avg');
        expect(res.body).toHaveProperty('steals_avg');
        expect(res.body).toHaveProperty('blocks_avg');
        expect(res.body).toHaveProperty('finals_played');
        expect(res.body).toHaveProperty('finals_won');
    });
});

describe('GET /api/player/:id', () => {
    it('should return a specific player when I put in their id and check to make sure Intergers and floats are returned', async () => {
        const validId = 1;
        const res = await request(app).get(`/api/player/${validId}`)

        expect(res.statusCode).toBe(200);
        expect(res.body).toHaveProperty('id', validId)
        expect(res.body).toHaveProperty('player_name', 'LeBron James');
        expect(res.body).toHaveProperty('points_avg', 27);
        expect(res.body).toHaveProperty('assists_avg', 7.4);
        expect(res.body).toHaveProperty('rebounds_avg', 7.4);
        expect(res.body).toHaveProperty('steals_avg', 1.6);
        expect(res.body).toHaveProperty('blocks_avg', 0.8);
        expect(res.body).toHaveProperty('finals_played', 10);
        expect(res.body).toHaveProperty('finals_won', 4);
    });
    it('should return a specific player when I put in their id', async () => {
        const validId = 5;
        const res = await request(app).get(`/api/player/${validId}`)

        expect(res.statusCode).toBe(200);
        expect(res.body).toHaveProperty('id', validId)
        expect(res.body).toHaveProperty('player_name');
        expect(res.body).toHaveProperty('points_avg');
        expect(res.body).toHaveProperty('assists_avg');
        expect(res.body).toHaveProperty('rebounds_avg');
        expect(res.body).toHaveProperty('steals_avg');
        expect(res.body).toHaveProperty('blocks_avg');
        expect(res.body).toHaveProperty('finals_played');
        expect(res.body).toHaveProperty('finals_won');
    });
    it('should return an error with 404', async () => {
        const nonValidId = 999
        const res = await request(app).get(`/api/player/${nonValidId}`)

        expect(res.statusCode).toBe(404);
        expect(res.body).toHaveProperty('error', 'Player not found')
    });
});

describe('GET /api/allplayers', () => {
    it('should respond with a list of 76 players', async () => {
        const res = await request(app).get('/api/allplayers');

        expect(res.statusCode).toBe(200)
        expect(Array.isArray(res.body)).toBe(true);
        expect(res.body.length).toBe(76);
    })
})