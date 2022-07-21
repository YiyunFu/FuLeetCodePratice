//: [Previous](@previous)

import Foundation

/**
 void quicksort(int* array, int left, int right)
 {
     if(left >= right)
         return;

     int index = partition(array, left, right);
     quicksort(array, left, index - 1);
     quicksort(array, index + 1, right);
 }
 */
func quickSort(_ a: [Int]) -> [Int] {
  guard a.count > 1 else { return a }

  let pivot = a[a.count/2]
  let less = a.filter { $0 < pivot }
  let equal = a.filter { $0 == pivot }
  let greater = a.filter { $0 > pivot }

  return quickSort(less) + equal + quickSort(greater)
}

quickSort([2,4,3,5,6,7])
