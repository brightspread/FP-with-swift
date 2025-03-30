import Foundation


// 피보나치 수열의 i번째 수는?
// 0 1 1 2 3 5 8 13 21 34 55 ...
func fibo(_ num: Int) -> Int {
    if num <= 0 { return 0 }
    if num == 1 { return 1 }
    return fibo(num - 1) + fibo(num - 2)
}
print(fibo(10))

