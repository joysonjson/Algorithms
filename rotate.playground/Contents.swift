import UIKit


// input array can be 1 to N
// k 0 to N index to indicate the number of items to be rotated

/*
 -- space complexity O(1) because temp array created is fixed size wont increase dynamically
 -- time complexity is O(n)
**/
func rotateRight<T>(array: [T], k: Int)->[T]{
    guard !array.isEmpty || k > 0 else {
        return array
    }
    
    var temp = array
    for i in 0..<array.count{
        temp[(i+k) % array.count] = array[i]
    }
    return temp
}

func rotateLeft<T>(array: [T], k: Int)->[T]{
    guard !array.isEmpty || k > 0 else {
        return array
    }
    
    var temp = array
    for i in 0..<array.count{
      temp[i] = array[(i+k) % array.count]
    }
    return temp
}

let res = rotateLeft(array: [1,2,3,4,5], k: 2)
let res1 = rotateRight(array: [1,2,3,4,5], k: 2)

print(res)
print(res1)
