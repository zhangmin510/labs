'use strict'

const express = require('express');

const PORT = 80;

const app = express();

app.get('/', (req, res) => {
	res.send('Hello labs');
});

app.listen(PORT);
console.log('Running on port:' + PORT);
