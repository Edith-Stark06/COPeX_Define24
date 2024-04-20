// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ComplaintContract {
    
    struct Complaint {
        bytes Email;
        uint Phone;
        bytes Name;
        bytes Suspect_Name;
        bytes Place;
        uint currentTime; 
        bytes EventTime;
    }
    
    event ComplaintFiled(bytes Email, uint Phone, bytes Name, bytes Suspect_Name, bytes Place, uint currentTime, bytes EventTime);

    function fileComplaint(
        bytes memory _Email,
        uint _Phone,
        bytes memory _Name,
        bytes memory _Suspect_Name,
        bytes memory _Place,
        bytes memory _EventTime
    ) public {
        emit ComplaintFiled(_Email, _Phone, _Name, _Suspect_Name, _Place, block.timestamp, _EventTime);
    }
}
