Given an array of integers, sort the array into a wave like array and return it, 
In other words, arrange the elements into a sequence such that a1 >= a2 <= a3 >= a4 <= a5.....

Example

Given [1, 2, 3, 4]

One possible answer : [2, 1, 4, 3]
Another possible answer : [4, 1, 3, 2]

import Foundation

class Solution {
	func wave(_ A: inout [Int]) -> [Int] {
        A.sort()
        
        for i in 0..<A.count/2 {
            swap(&A,2*i,2*i+1)
        }
        
        return A
	}
	
	func swap(_ A: inout [Int], _ pos1: Int, _ pos2: Int) {
	    var temp = A[pos1]
	    A[pos1] = A[pos2]
	    A[pos2] = temp
	}
}
