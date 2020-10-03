/******************************************************************************

 Swift Program for cerner_2^5_2020

 *******************************************************************************/
func findPrimesUntil(limit limit: Int) -> [Int]? {
    guard limit > 1 else {
        return .None
    }
    
    var primes =  [Bool](count: limit+1, repeatedValue: true)
    
    for i in 0..<2 {
        primes[i] = false
    }
    
    for j in 2..<primes.count where primes[j] {
        for var k = 2; k*j < primes.count; k++ {
            primes[k*j] = false
        }
    }
    
    return primes.enumerate().flatMap { (index: Int, element: Bool) -> Int? in
        if element {
            return index
        }
        return .None
    }
}

//Sample calls
findPrimesUntil(limit: -3) //nil
