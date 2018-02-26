//
//  main.swift
//  Pascal's Triangle
//
//  Created by xuezhaofeng on 31/01/2018.
//  Copyright © 2018 paladinfeng. All rights reserved.
//

import Foundation

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var result = [[Int]]()
        if numRows == 0 {
            return result;
        }
        for i in 0..<numRows {
            var current = [Int]()
            //填数
            for j in 0...i {
                // i 列 j 行
                if (i > 1 && j > 0 && j < i) {
                    print(result[i-1][j], result[i-1][j-1])
                    current.append(result[i-1][j] + result[i-1][j-1])
                } else {
                    current.append(1)
                }
                //print(current)
            }
            result.append(current)
        }
        return result
    }
}

let result = Solution().generate(100)
print(result)
