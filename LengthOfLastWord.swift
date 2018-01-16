/*
Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.

If the last word does not exist, return 0.

Note: A word is defined as a character sequence consists of non-space characters only.

Example:

Given s = "Hello World",

return 5 as length("World") = 5.

Please make sure you try to solve this problem without using library functions. Make sure you only traverse the string once.
*/

import Foundation

class Solution {
	func lengthOfLastWord(_ A: String) -> Int {
        var strLength = A.count
        var lastWordLength = 0
        var chCount = 0
        var idx = A.startIndex
        
        if A.isEmpty {
            return 0
        }
        else {
            idx = A.index(A.endIndex,offsetBy:-1)
        }
         
           
        while(chCount < strLength) {
            //print("Current ch: \(A[idx])")
            if A[idx] == " " {
                if(lastWordLength>0) { //To account for cases like "Hello World "
                    return lastWordLength
                }
            }
            else {
                lastWordLength += 1
            }
            chCount += 1
            if (idx>A.startIndex) {
                idx = A.index(idx,offsetBy:-1)
            }
            
        }
        
        return lastWordLength
	}
}
