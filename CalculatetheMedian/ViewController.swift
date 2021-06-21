//
//  ViewController.swift
//  CalculatetheMedian
//
//  Created by Daniel Washington Ignacio on 21/06/21.
//

/*
 Create a function that takes an array of numbers and return its median. If the input array is even length, take the average of the two medians, else, take the single median.

 Examples

 median([2, 5, 6, 2, 6, 3, 4]) ➞ 4

 median([21.4323, 432.54, 432.3, 542.4567]) ➞ 432.4

 median([-23, -43, -29, -53, -67]) ➞ -43
 Notes

 Input can be any negative or positive number.
 Input array will contain at least four numbers.
 See Resources tab for info on calculating the median.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.median([2, 5, 6, 2, 6, 3, 4]))
        print(self.median([21.4323, 432.54, 432.3, 542.4567]))
        print(self.median([-23, -43, -29, -53, -67]))
    }

    func median(_ arr: [Double]) -> Double {
        let count: Int = arr.count/2
        if arr.count % 2 == 0{
            return (arr[count] + arr[count - 1])/(2.0)
        }
        return arr.sorted()[count]
    }

}

