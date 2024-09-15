// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; // solidity 的版本

contract SimpleStorage {
    uint256 public favoriteNum; // 沒 assign 數字則默認為 0

    //uint[] ListOfFavoriteNum;
    struct Person {
        uint ID;
        string name;
    }

    // dynamic array
    Person[] public ListOfNOC; //空 List

    // 人名 to 員編
    mapping(string => uint256) public nameToNumber;

    // Person public Simon = Person({ID:397,name:"Simon"});
    // Person public Mike = Person({ID:398,name:"Mike"});

    function store(uint256 _favoriteNum) public {
        favoriteNum = _favoriteNum;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNum;
    }

    //memory，calldata，storage --> 僅暫時存在
    //calldata --> 無法改變臨時變量

    //Note:Solidity 知道 function 內的參數是臨時變量，所以用 Storage 會報錯

    function addPerson(string memory _name, uint256 _ID) public {
        ListOfNOC.push(Person(_ID, _name));
        nameToNumber[_name] = _ID;
    }
}


