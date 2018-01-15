/*
You are in an infinite 2D grid where you can move in any of the 8 directions :

 (x,y) to 
    (x+1, y), 
    (x - 1, y), 
    (x, y+1), 
    (x, y-1), 
    (x-1, y-1), 
    (x+1,y+1), 
    (x-1,y+1), 
    (x+1,y-1) 
You are given a sequence of points and the order in which you need to cover the points. Give the minimum number of steps in which you can achieve it. You start from the first point.

Example :

Input : [(0, 0), (1, 1), (1, 2)]
Output : 2
It takes 1 step to move from (0, 0) to (1, 1). It takes one more step to move from (1, 1) to (1, 2).

This question is intentionally left slightly vague. Clarify the question by trying out a few cases in the “See Expected Output” section.

*/

import Foundation

class Solution {
	func coverPoints(_ A: inout [Int], _ B: inout [Int]) -> Int {
        var result = 0
        var xdiff = 0, ydiff = 0
        
        for i in 0..<(A.count-1) {
            xdiff = abs(A[i+1]-A[i])
            ydiff = abs(B[i+1]-B[i])
            
            result += xdiff<ydiff ? ydiff : xdiff
        
        }
        
        return result
        
	}
}
