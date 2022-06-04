import UIKit


/*
 We are given a string S representing a phone number, which we would like to reformat. String S consists of N characters: digits, spaces, and/or dashes. It contains at least two digits.
 
 Spaces and dashes in string S can be ignored. We want to reformat the given phone number is such a way that the digits are grouped in blocks of length three, separated by single dashes. If necessary, the final block or the last two blocks can be of length two.
 
 For example:
 
 S = "00-91   1234567890" should become
     "009-112-345-678-0"
 
 Assume:
 - S consists only of digits (0-9), spaces, and/or dashses (-)
 - S containts at least two digits
 
 Translate:
 
 Would like to reformat a phone number string so that:
 - every third char is a "-"
 - spaces and dashes don't matter
 - if the block ends in anything other than -xxx or -xx reformat to a block of two like xx-xx (not obvious)
 
 */

/*
 psuedo code
 remove spaces and dashes first
 loop through charecter and append dashes
 */


func formatNumber(number: String)-> String{
    let noSpaces = number.replacingOccurrences(of: " ", with: "")
    let noDashes = noSpaces.replacingOccurrences(of: "-", with: "")
    var res = ""
    for (index,cha) in noDashes.enumerated(){
        res.append(cha)
        if ((index+1) % 3 == 0){
            res.append("-")
        }
    }
    return res
}

let res = formatNumber(number: "00-91   1234567890")
print(res)




