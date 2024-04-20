const Web3 = require('web3');
const infuraEndpoint = 'https://mainnet.infura.io/v3/9fa2e3d1eb12446da7bccab83f10863a';
const contractABI = require('./contractABI.json');
const web3 = new Web3(new Web3.providers.HttpProvider(infuraEndpoint));
const contractAddress = '0xE3Ca443c9fd7AF40A2B5a95d43207E763e56005F'; 
const contract = new web3.eth.Contract(contractABI, contractAddress);
contract.events.ComplaintFiled()
    .on('data', (event) => {
        console.log('Complaint filed:', event.returnValues);
        // Fetch relevant data from the event
        const { Email, Phone, Name, Suspect_Name, Place, currentTime, EventTime } = event.returnValues;
        
        // Example: Log the fetched data
        console.log('UID:', event.transactionHash); // Use transaction hash as UID
        console.log('Email:', Web3.utils.hexToUtf8(Email));
        console.log('Phone:', Phone);
        console.log('Name:', Web3.utils.hexToUtf8(Name));
        console.log('Suspect Name:', Web3.utils.hexToUtf8(Suspect_Name));
        console.log('Place:', Web3.utils.hexToUtf8(Place));
        console.log('Current Time:', new Date(currentTime * 1000)); // Convert Unix timestamp to human-readable format
        console.log('Event Time:', Web3.utils.hexToUtf8(EventTime));
        
        // Handle the event data here
    })
    .on('error', console.error);
