// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SocialComplaint{
    
    struct Complaint {
        bytes Email;
        bytes Phone;
        bytes Name;
        bytes Suspect_Name;
        bytes Place;
        uint256 currentTime;
        bytes EventTime;
        string Reason;
    }
    uint256 public ncomplaints;
    Complaint[] public complaints;
    mapping(address => uint256) public no_of_complaints;

    uint256 public rewards = 2 ether;

    function fileComplaint(
        bytes memory _Email,
        bytes memory _Phone,
        bytes memory _Name,
        bytes memory _Suspect_Name,
        bytes memory _Place,
        bytes memory _EventTime,
        string memory _Reason
    ) public payable {
        
        no_of_complaints[msg.sender]++;
        
        Complaint memory newComplaint = Complaint({
            Email: _Email,
            Phone: _Phone,
            Name: _Name,
            Suspect_Name: _Suspect_Name,
            Place: _Place,
            currentTime: block.timestamp,
            EventTime: _EventTime,
            Reason: _Reason
        });

        complaints.push(newComplaint);

        if (no_of_complaints[msg.sender] % 5 == 0) {
            (bool success, ) = msg.sender.call{value: rewards}("");
            require(success, "Transfer failed.");
        }
    }
}
