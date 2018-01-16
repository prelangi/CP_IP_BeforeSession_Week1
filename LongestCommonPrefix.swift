/*
Write a function to find the longest common prefix string amongst an array of strings.

Longest common prefix for a pair of strings S1 and S2 is the longest string S which is the prefix of both S1 and S2.

As an example, longest common prefix of "abcdefgh" and "abcefgh" is "abc".

Given the array of strings, you need to find the longest S which is the prefix of ALL the strings in the array.

Example:

Given the array as:

[

  "abcdefgh",

  "aefghijk",

  "abcefgh"
]
The answer would be “a”.
*/

import Foundation

class Solution {
	func longestCommonPrefix(_ A: inout [String]) -> String {
	
	    var prefix: String = A.count>0 ? A[0]: ""
	    if A.count > 1 {
	        for i in 1..<A.count {
	            prefix = LCP(prefix,A[i])
	        }
	    }
	    return prefix

	}
	
	func LCP(_ currPrefix: String, _ nextString: String) -> String {
	    var cnt1 = currPrefix.count
	    var cnt2 = nextString.count
	    var start1 = 0, start2 = 0
	    var result = currPrefix
	    var idx1 = currPrefix.startIndex
	    var idx2 = nextString.startIndex
	    
	    while(start1 < cnt1 && start2 < cnt2) {
	        var idx1 = currPrefix.index(currPrefix.startIndex, offsetBy: start1)
	        var idx2 = nextString.index(nextString.startIndex, offsetBy: start2)
	        
	        if(currPrefix[idx1] != nextString[idx2]) {
	            break
	        }
	        
	        start1 += 1
	        start2 += 1
	    }
	   
	    idx1 = currPrefix.index(currPrefix.startIndex, offsetBy: start1)
	    result = String(currPrefix[..<idx1])
	    return result
	}
	
	
}
