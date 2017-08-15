//
//  main.swift
//  Reverse Integer
//
//  Created by xuezhaofeng on 2017/8/3.
//  Copyright © 2017年 paladinfeng. All rights reserved.
//

import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        var temp: Int = x
        var new: Int = 0
        while temp != 0 {
            new = new * 10 + temp % 10
            temp = temp / 10
        }
        if abs(new) > Int(Int32.max) {
            return 0
        }
        return new
    }
}

let result = Solution().reverse(1534236469);
print(INT32_MAX)
print(result)
