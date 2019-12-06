module.exports = function(){
    var express = require('express');
    var router = express.Router();
    module.exports = router;
    function getAdopters(res, mysql, context, complete){
        mysql.pool.query("SELECT Cats.CatAdopter, Adopters.AdoptCat FROM Cats JOIN Cat_Adopters ON Cats.CatKeyNum=Cat_Adopters.CatID JOIN Adopters ON Cat_Adopters.AdoptID = Adopters.AdopterKeyNum;", function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }
            context.adopters  = results;
            complete();
        });
    }

     router.get('/', function(req, res){
        var callbackCount = 0;
        var context = {};
        context.jsscripts = ["deleteAdopter.js"];
        var mysql = req.app.get('mysql');
        getAdopters(res, mysql, context, complete);
        function complete(){
            callbackCount++;
            if(callbackCount >= 2){
                res.render('adopters', context);
            }

        }
    });
/*delete adopter from table using delete button */
    router.delete('/:id', function(req, res){
        var mysql = req.app.get('mysql');
        var sql = "DELETE FROM Adopters WHERE AdopterName = ?";
        var inserts = [req.params.id];
        sql = mysql.pool.query(sql, inserts, function(error, results, fields){
            if(error){
                console.log(error)
                res.write(JSON.stringify(error));
                res.status(400);
                res.end();
            }else{
                res.status(202).end();
            }
        })
    })

    return router;
}();
