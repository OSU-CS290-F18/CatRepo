/*module.exports = function(){
    var express = require('express');
    var router = express.Router();

    function getVets(res, mysql, context, complete){
        mysql.pool.query("SELECT Cats.CatVet, Vets.VetCat FROM Cats JOIN Cat_Vets ON Cats.CatKeyNum=Cat_Vets.CatId JOIN Vets ON Cat_Vets.VetID=Vets.VetKeyNum;", function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }
            context.vets = results;
            complete();
        });
    }


     router.get('/', function(req, res){
        var callbackCount = 0;
        var context = {};
        var mysql = req.app.get('mysql');
        getVets(res, mysql, context, complete);
        function complete(){
            callbackCount++;
            if(callbackCount >= 2){
                res.render('vets', context);
            }

        }
    });
     return router;
}();*/