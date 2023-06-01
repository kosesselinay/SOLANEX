'use strict'

const validator = require('validator');

const validateUpdateRequest = (req, res, next) => {
    const { userName, aboutYou, webSite } = req.body;

    let error = null;
    if (!validator.isAlphanumeric(userName)) {
        error = 'userName must be alphanumeric';
    } else if (!validator.isLength(aboutYou, { min: 10, max: 140 })) {
        error = 'aboutYou must be between 10 and 140 characters';
    } else if (!validator.isURL(webSite)) {
        error = 'webSite must be a valid URL';
    }
    if (error) {
        return res.send(403, false);
 
    }

    next();
};

module.exports = validateUpdateRequest;