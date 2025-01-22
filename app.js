var cron = require('node-cron');
const { syncDB } = require('./tasks/sync-db');

console.log('Inicio tick cada multiplo de  5 segundos');

cron.schedule('0-59/5 * * * * *', syncDB);

