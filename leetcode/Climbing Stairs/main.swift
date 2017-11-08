//
//  main.swift
//  Climbing Stairs
//
//  Created by xuezhaofeng on 02/11/2017.
//  Copyright © 2017 paladinfeng. All rights reserved.
//
//  斐波那契数列
//  1, 2, 3, 5, 8, 13, 21, 34
//  F(n) = F(n-1) + F(n-2)

import Foundation

class Solution {
    func climbStairs(_ n: Int) -> Int {

//        error: time out
        if n == 1 { return 1 }
        if n == 2 { return 2 }
//        return climbStairs(n - 2) + climbStairs(n - 1)
        
        var array = [1, 2]
        for i in 2..<n {
            array.append(array[i - 1] + array[i - 2])
        }
        return array[n - 1]
        
    }
}

let result = Solution().climbStairs(44)
print(result)
