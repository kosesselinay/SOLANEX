const mongoose = require('mongoose');

// Connect to MongoDB
mongoose.connect('mongodb://192.168.0.21:27017/solanex', { useNewUrlParser: true }, (err) => console.log(err));

// Create a schema for the user data
const userSchema = new mongoose.Schema({
    profilePicture: String,
    userName: String,
    aboutYou: String,
    webSite: String
});

const User = mongoose.model('User', userSchema);


module.exports = User;


