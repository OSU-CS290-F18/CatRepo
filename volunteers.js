/*module.exports = function(){
    var express = require('express');
    var router = express.Router();

    function getVolunteers(res, mysql, context, complete){
        mysql.pool.query("SELECT Cats.CatVolunteer, Volunteers.VolunteerCat FROM Cats JOIN Cat_Volunteers ON Cats.CatKeyNum=Cat_Volunteers.CatID JOIN Volunteers ON Cat_Volunteers.VolunteerID=Volunteers.VolunteerKeyNum;", function(error, results, fields){
            if(error){
                res.write(JSON.stringify(error));
                res.end();
            }
            context.adopters = results;
            complete();
        });
    }


     router.get('/', function(req, res){
        var callbackCount = 0;
        var context = {};
        var mysql = req.app.get('mysql');
        getVolunteers(res, mysql, context, complete);
        function complete(){
            callbackCount++;
            if(callbackCount >= 2){
                res.render('volunteers', context);
            }

        }
    });*/