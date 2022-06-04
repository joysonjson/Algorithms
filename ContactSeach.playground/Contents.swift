import UIKit

/*
 When someone searches their contacts based on a phone number, it's nice when a list
 of contact pops up.
 
 Write an algorithm that searches you contacts for phone number strings, and returns:
  - NO CONTACT if contact can't be found
  - A contact if a contact is found
  - The first alphabetized contact if there are multiple
 
 A = ["pim", "pom"]             // Contacts (return one of these)
 B = ["999999999", "777888999"] // Phone numbers for each contact A[i] = B[i]
 P = "88999"                    // Search phrase

 */

public func findContact(_ A : [String], _ B : [String], _ P : String) -> String {
    // do your work here
    var res: [String] = []
    for (index,item) in B.enumerated() {
        if (item.contains(P)){
            res.append(A[index])
        }
    }
    if (res.count ==  0){
        return "NO CONTACT"
    }else if (res.count == 1){
        return res.first!
    }else{
        return res.sorted().first!
    }
}

let A = ["pim", "pom"]
let B = ["999999999", "777888999"]
let P = "88999"

findContact(A, B, P)   // pom
findContact(["sander", "amy", "ann"], ["12345", "23456", "123"], "1")  // ann
findContact(["ada,", "eva", "leo"], ["1212", "1111", "4444"], "112")   // NO CONTACT

// edge cases
findContact([String](), [String](), "")
findContact(A, B, "")




