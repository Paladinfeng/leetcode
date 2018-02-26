//
//  main.swift
//  Pascal's Triangle II
//
//  Created by xuezhaofeng on 26/02/2018.
//  Copyright © 2018 paladinfeng. All rights reserved.
//

import Foundation

class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var tempArray = [[Int]]()
        
        for i in 0..<rowIndex+1 {
            var currentArray = [Int]()
            for j in 0...i {
                if (i > 1 && j > 0 && j < i) {
                    currentArray.append(tempArray[i-1][j-1] + tempArray[i-1][j])
                } else {
                    currentArray.append(1)
                }
            }
            tempArray.append(currentArray)
        }
        return tempArray[rowIndex]
    }
}

let result = Solution().getRow(3)
print(result)

