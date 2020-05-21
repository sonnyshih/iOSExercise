func checkPrime(number:Int)->String {
    var isPrime:Bool? = true
    
    if (number<=0) {
        isPrime = nil
    } else if (number==1) {
        isPrime=true;
    } else {
        for i in 2..<number {
            if number%i==0 {
                isPrime=false
            }
        }
    }
    
    if isPrime==true {
        return "\(number) is prime"
    } else if (isPrime==false) {
        return "\(number) is not prime"
    } else {
        return "Please enter a greater than 0."
    }
}

print(checkPrime(number: 17))
