/*
Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

Example:

"A man, a plan, a canal: Panama" is a palindrome.

"race a car" is not a palindrome.

Return 0 / 1 ( 0 for false, 1 for true ) for this problem
*/

import Foundation

class Solution {
	func isPalindrome(_ A: inout String) -> Int {
        
        var Alc   = A.lowercased()
        var start = Alc.startIndex
        var end = Alc.endIndex
        var startCnt = 0, endCnt = Alc.count-1
        var startString = String(Alc[Alc.index(Alc.startIndex,offsetBy:startCnt)])
        var endString = String(Alc[Alc.index(Alc.startIndex,offsetBy:endCnt)])
        var startIdx = Alc.index(Alc.startIndex,offsetBy:startCnt)
        var endIdx = Alc.index(Alc.startIndex,offsetBy:endCnt)
        
        
        if Alc.isEmpty {
            return 1
        }
        
        while(startCnt < endCnt) {
            startIdx = Alc.index(Alc.startIndex,offsetBy:startCnt)
            endIdx   = Alc.index(Alc.startIndex,offsetBy:endCnt)
            startString = String(Alc[startIdx])
            endString = String(Alc[endIdx])
            
            
            if(!isAlphanumeric(startString)) {
                startCnt += 1
                continue
            }
            
            if(!isAlphanumeric(endString)) {
                endCnt -= 1
                continue
            }
            
            if(startString != endString) {
                return 0
            }
            else {
                startCnt+=1 
                endCnt-=1
            }
        }
        
        return 1
        
        
	}
	
	

    func isAlphanumeric(_ sin: String) -> Bool {
        return !sin.isEmpty && sin.range(of: "[^a-zA-Z0-9]", options: .regularExpression) == nil
    }
}
