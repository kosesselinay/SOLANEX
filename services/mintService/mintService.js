const restify = require('restify');
const mongoose = require('mongoose');

const server = restify.createServer();
server.use(restify.plugins.bodyParser());

const mongoUrl = 'mongodb://127.0.0.1:27017/solanex';
mongoose.connect(mongoUrl, { useNewUrlParser: true, useUnifiedTopology: true })
    .then(() => console.log(`Connected to MongoDB: ${mongoUrl}`))
    .catch(err => {
        console.error(err);
        process.exit(1);
    });

const nftSchema = new mongoose.Schema({
    itemName: String,
    mint: String,
    accountId: String,
    description: String,
    externalLinkToNFT: String
});
const NFT = mongoose.model('NFT', nftSchema);

server.post('/api/mint/new', async (req, res) => {
    try {
        const { nft, itemName, description, link } = req.body;
        if (!nft || !itemName || !description || !link) {
            return res.send(400, { message: 'Missing values' });
        }
        const nftInstance = new NFT({
            mint: nft,
            itemName: itemName,
            accountId: 0,
            description: description,
            externalLinkToNFT: link
        });
        await nftInstance.save();
        res.send(200, nftInstance);
    } catch (err) {
        console.error(err);
        res.send(500, { message: 'Internal server error' });
    }
});
server.listen(8080, () => {
    console.log(`Server started on port 8080`);
});
