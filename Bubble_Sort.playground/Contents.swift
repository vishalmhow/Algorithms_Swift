import UIKit

func bubbleSort(array: inout [Int]) -> [Int] {
    for i in 0..<array.count - 1 {
        for j in 0..<array.count - 1 {
            if (array[j] > array[j+1]) {
                let temp = array[j]
                array[j] = array[j+1]
                array[j+1] = temp
            }
        }
    }
    return array
}
var arr = [5,7,4,2,3,1,0,9,8]
print(bubbleSort(array: &arr))
