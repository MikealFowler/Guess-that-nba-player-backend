require('dotenv').config();
const express = require('express');
const cors = require('cors');
const routes = require('./src/routes/routes.js');

const app = express();

app.use(cors());
app.use('/api', routes);

module.exports = app;