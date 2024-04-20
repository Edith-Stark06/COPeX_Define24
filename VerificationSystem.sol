
contract verification{
    event valid (uint CID, bytes Email, uint Phone, bytes Name, bytes Suspect_Name, bytes Place, uint currentTime, bytes EventTime, string Reason);

    function valid (uint _CID, 
        bytes memory  _mail, 
        uint _Phone, 
        bytes memory _Name, 
        bytes memory _Suspect_Name, 
        bytes memory  _Place, 
        uint _currentTime, 
        bytes memory _EventTime, 
        string memory _Reason
        )public {
        


        emit valid (_CID, _Email, _Phone, _Name, _Suspect_Name, _Place, _currentTime, EventTime,_Reason);
    }

    event invalid (uint CID, bytes Email, uint Phone, bytes Name, bytes Suspect_Name, bytes Place, uint currentTime, bytes EventTime, string Reason);

    function invalid (uint _CID, 
        bytes memory  _Email,
        uint _Phone, 
        bytes memory _Name,
        bytes memory _Suspect_Name, 
        bytes memory _Place, 
        uint currentTime, 
        bytes memory _EventTime,
        string memory _Reason
        )public {


        emit invalid (_CID, _Email, _Phone, _Name, _Suspect_Name, _Place, _currentTime, _EventTime, _Reason);
        
    }
}
