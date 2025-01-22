const { syncDB } = require("../../tasks/sync-db");

describe('Pruebas en Sync-DB', () => {

    test('debe ejecutarse 2 veces',()=>{
        syncDB();
        const times = syncDB();
        console.log('Se llamo ', times)

        expect(times).toBe(2)
    })
});
