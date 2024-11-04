pragma solidity ^0.8.13;


//SPDX-License-Identifier: MIT

contract Nft_Counter{
    uint256  count;
    function add_Nft()public {
        count+=1;
    }
     function delete_Nft()public {
        count-=1;
    }
    function checkTotalNft() public view returns(uint256){
        return count;
    }

}