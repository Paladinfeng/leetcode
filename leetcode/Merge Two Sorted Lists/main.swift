//
//  main.swift
//  Merge Two Sorted Lists
//
//  Created by xuezhaofeng on 15/08/2017.
//  Copyright © 2017 paladinfeng. All rights reserved.
//

import Foundation

/**
 * Definition for singly-linked list.
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
//        var temp: ListNode?
//
//        var l1 = l1
//        var l2 = l2
        
//        while l1 != nil && l2 != nil {
//
//            if l1?.val >= l2?.val {
//
//            }
//
//            l1 = l1?.next
//            l2 = l2?.next
//
//        }
        
//        while temp != nil {
//            if let a = temp {
//                print(a.val)
//            }
//            temp = temp?.next
//        }
        
//        while temp != nil {
//
//            if(temp?.next == nil) {
//                break
//            }
//
//            temp = temp?.next
//        }
        
        let dummy = ListNode(0)
        var node = dummy
        
        var l1 = l1
        var l2 = l2
        
        while l1 != nil && l2 != nil{
//            node.next = l1
//            print(node.next?.val)
//            l1 = l1?.next
//            node = node.next!
//            print(l1?.val, l2?.val)
//            l1 = l1?.next
//            l2 = l2?.next
            if let v1 = l1?.val, let v2 = l2?.val {
                if v1 <= v2 {
                    node.next = l1
                    l1 = l1?.next
                } else {
                    node.next = l2
                    l2 = l2?.next
                }
                node = node.next!
            }
        }
        
//        while l1 != nil && l2 != nil {
//            if l1!.val < l2!.val {
//                node.next = l1
//                l1 = l1!.next
//            } else {
//                node.next = l2
//                l2 = l2!.next
//            }
//
//            node = node.next!
//            print(dummy.val)
//        }
        
//        while node != nil {
//            print(node.val)
//            node = node.next!
//        }
        
        node.next = l1 ?? l2
        
        return dummy.next

//        print(temp?.val)
        

//        temp?.next = l2
        
//        return temp
    }
}

var l1 = ListNode(1)
l1.next = ListNode(2)
l1.next?.next = ListNode(5)

var l2 = ListNode(2)
l2.next = ListNode(4)
l2.next?.next = ListNode(6)

var result = Solution().mergeTwoLists(l1, l2)

//var result: ListNode? = l1
while result != nil {
//    print(test?.val)
    if let a = result {
        print(a.val)
    }
    result = result?.next
}












