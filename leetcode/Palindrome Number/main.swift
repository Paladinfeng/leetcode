//
//  main.swift
//  Palindrome Number
//
//  Created by xuezhaofeng on 2017/8/4.
//  Copyright © 2017年 paladinfeng. All rights reserved.
//

import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        var digitalArray: [Int] = [Int]();
        var temp = x;
        while temp != 0 {
//            print(temp % 10)
            digitalArray.append(temp % 10)
            temp = temp / 10
        }
        for i in 0..<digitalArray.count/2 {
//            print(i)
            if digitalArray[i] != digitalArray[digitalArray.count - 1 - i] {
                return false
            }
        }
//        print(digitalArray)
        
        return true
    }
}

let result = Solution().isPalindrome(-2147447412);
print(result)
