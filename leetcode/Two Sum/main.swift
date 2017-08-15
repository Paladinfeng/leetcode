//
//  main.swift
//  Two Sum
//
//  Created by xuezhaofeng on 2017/8/1.
//  Copyright © 2017年 paladinfeng. All rights reserved.
//

/*
 
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 
 */

import Foundation

class Solution {
    func twoSum(_ nums:[Int], _ target: Int) -> [Int] {
        
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j];
                }
            }
        }
        
        return [Int]();
    }
}

class SolutionTwo {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict:[Int:Int] = [:]
        for (index, value) in nums.enumerated() {
            if let matchIndex = dict[target-value] {
                return [matchIndex, index]
            }
            dict[value] = index
        }
        return [Int]();
    }
}

let result = Solution().twoSum([1, 2, 3], 5);
print(result);
