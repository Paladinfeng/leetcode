//
//  main.swift
//  Sqrt(x)
//
//  Created by xuezhaofeng on 01/11/2017.
//  Copyright © 2017 paladinfeng. All rights reserved.
//
//  special: 2147395599
//  sqrt(x) is faster

import Foundation

class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x <= 0 {
            return x
        }
        
        var left = 0
        var right = x / 2 + 1
        var mid = 0
        
        while left <= right {
            mid = (right - left) / 2 + left
            
            if mid * mid == x {
                return mid
            } else if mid * mid < x {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return right
    }
}

let result = Solution().mySqrt(5)
print(result)

