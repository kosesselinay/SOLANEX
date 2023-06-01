const restify = require('restify');
// const User = require('./DatabaseStuff/database.js')
const validateUpdateRequest = require("./validator.js")

const server = restify.createServer();

server.use(restify.plugins.bodyParser({
    mapParams: true,
}));


server.post('/update', validateUpdateRequest, (req, res, next) => {

    const { profilePicture, userName, aboutYou, webSite } = req.body;

   /* const user = new User({
        profilePicture: profilePicture,
        userName: userName,
        aboutYou: aboutYou,
        webSite: webSite 
    });*/
   /* user.save((err) => {
        if (err) {
            res.send(404, {
                success: false,
                error: err
            });
        } else {
            res.send(202,{
                success: true
            });
        }
        next();
    }); */
    res.send(200, {
        success: true,
    });
});


server.listen(8080, () => {
    console.log('Server is listening on port 8080');
});
