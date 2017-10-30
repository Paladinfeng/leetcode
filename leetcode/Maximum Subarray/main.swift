//
//  main.swift
//  Maximum Subarray
//
//  Created by xuezhaofeng on 22/08/2017.
//  Copyright © 2017 paladinfeng. All rights reserved.
//

import Foundation

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var temp = nums[0];
        var sum = nums[0];
        
        for i in 1..<nums.count {
            temp = max(temp + nums[i], nums[i])
            sum = max(temp, sum);
        }
        return sum
    }
}

class Solution1 {
    func maxSubArray(_ nums: [Int]) -> Int {

        var temp = 0
        var sum = 0
        
        for i in 0..<nums.count {
            sum += nums[i]
            temp = max(temp, sum)
            print("sum: \(sum) temp: \(temp)");
//            sum = max(0, sum);
            if sum < 0 {
                sum = 0
            }
            print("sum: \(sum)");
            print("-------------------")
        }
        
        return temp
        
    }
}

let result = Solution1().maxSubArray([-2,1,-3,4,-1,2,1,-5,4])
print(result)

