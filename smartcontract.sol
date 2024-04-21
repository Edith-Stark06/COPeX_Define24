// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ComplaintContract {
    
    struct Complaint {
        bytes Email;
        uint Phone;
        bytes Name;
        bytes Suspect_Name;
        bytes Place;
        string Reason;
        uint currentTime; 
        bytes EventTime;
        bool ForOwn; // Added field to specify if the complaint is for own or society
    }
    
    event ComplaintFiled(
        bytes Email,
        uint Phone,
        bytes Name,
        bytes Suspect_Name,
        bytes Place,
        string Reason,
        uint currentTime,
        bytes EventTime,
        bool ForOwn
    );

    mapping(bytes32 => Complaint) public complaints; // Mapping to track complaints
    mapping(address => bytes32[]) public copComplaints; // Mapping to track complaints for each cop

    event ComplaintVerified(bytes32 indexed complaintID, bool isValid);

    struct Cop {
        string areaOfDuty;
        string currentPosting;
        bool assignedToCase;
        uint copID;
    }
    
    mapping(address => Cop) public cops;
    
    mapping(bytes32 => bool) public verifiedComplaints; // Mapping to track verified complaints
    
    modifier onlyAssignedCop() {
        require(cops[msg.sender].assignedToCase, "Only cops assigned to the case can verify complaints");
        _;
    }

    function fileComplaint(
        bytes memory _Email,
        uint _Phone,
        bytes memory _Name,
        bytes memory _Suspect_Name,
        bytes memory _Place,
        string memory _Reason,
        bytes memory _EventTime,
        bool _ForOwn // Added parameter to specify if the complaint is for own or society
    ) public {
        bytes32 complaintID = keccak256(abi.encodePacked(_Email, _Phone, _Name, _Suspect_Name, _Place, _Reason, _EventTime, _ForOwn));
        complaints[complaintID] = Complaint(_Email, _Phone, _Name, _Suspect_Name, _Place, _Reason, block.timestamp, _EventTime, _ForOwn);
        copComplaints[msg.sender].push(complaintID); // Add complaint ID to cop's list
        emit ComplaintFiled(_Email, _Phone, _Name, _Suspect_Name, _Place, _Reason, block.timestamp, _EventTime, _ForOwn);
    }
    
    function verifyComplaint(
        bytes32 _complaintID,
        bool _isValid
    ) public onlyAssignedCop {
        verifiedComplaints[_complaintID] = _isValid;
        emit ComplaintVerified(_complaintID, _isValid);
    }

    uint constant REWARD_THRESHOLD = 5; // Threshold for rewarding user
    
    mapping(address => uint) public userRewards; // Mapping to track user rewards
    
    function claimReward() public {
        require(cops[msg.sender].copID != 0, "Only cops can claim rewards");
        
        uint validComplaintsCount = 0;
        bytes32[] memory complaintIDs = copComplaints[msg.sender]; // Get list of complaints for the cop
        
        for(uint i = 0; i < complaintIDs.length; i++) {
            if(verifiedComplaints[complaintIDs[i]]) {
                validComplaintsCount++;
            }
        }
        
        uint rewards = validComplaintsCount / REWARD_THRESHOLD;
        userRewards[msg.sender] += rewards;
        emit RewardClaimed(msg.sender, rewards);
    }

    event RewardClaimed(address indexed user, uint reward);
}
