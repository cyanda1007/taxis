module.exports = function(database) {

    const pool = database;



    var totalTripCount = async function () {
        const counter = await pool.query('SELECT COUNT(*) FROM trip');
        return counter.rows[0].count;


    }

    var findAllRegions = async function () {
        const findAll = await pool.query('SELECT * FROM region');
        return findAll.rows
        
    }

    var findTaxisForRegion = async function (taxiFromReg) {
        const findTaxi = await pool.query(`SELECT reg_number FROM region 
        INNER JOIN taxi ON region.id = taxi.taxi_reg WHERE region_name = $1`, [taxiFromReg]);
        return findTaxi.rows

    }

    var findTripsByRegNumber = async function (regNumber) {
        const trips = await pool.query(`SELECT route_id FROM taxi
        INNER JOIN trip ON taxi.id = trip.taxi_id
        INNER JOIN route ON trip.route_id = route.id
        WHERE reg_number = $1`, [regNumber]);

        const fare = trips.rows;
        return fare.map(trip => trip.route_id);
        

    }

    var findTripsByRegion = async function (trips) {
        const tripsByreg = await pool.query(`SELECT COUNT(*) FROM region 
        INNER JOIN taxi ON region.id = taxi.taxi_reg 
        INNER JOIN trip ON taxi.taxi_reg = trip.taxi_id WHERE region_name = $1`, [trips]);
        return tripsByreg.rows[0].count;


    }

    var findIncomeByRegNumber = function () {

    }
    
    var findTotalIncomePerTaxi = function () {

    }
    
    var findTotalIncome = function () {

    }

    var findTotalIncomeByRegion = function () {

    }


    return {
        totalTripCount,
        findAllRegions,
        findTaxisForRegion,
        findTripsByRegNumber,
        findTripsByRegion,
        findIncomeByRegNumber,
        findTotalIncomePerTaxi,
        findTotalIncome,
        findTotalIncomeByRegion
    }
	
}