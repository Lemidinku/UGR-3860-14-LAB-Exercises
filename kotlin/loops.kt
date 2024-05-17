fun sumOfEvenNumbers(): Int {
    var sum = 0
    for (i in 1..50) {
        if (i % 2 == 0) {
            sum += i
        }
    }
    return sum
}
fun findPrimesInRange(start: Int, end: Int): List<Int> {
    val primes = mutableListOf<Int>()
    var num = start

    while (num <= end) {
        if (isPrime(num)) {
            primes.add(num)
        }
        num++
    }
    return primes
}

fun isPrime(n: Int): Boolean {
    if (n <= 1) return false
    var i = 2
    while (i * i <= n) {
        if (n % i == 0) return false
        i++
    }
    return true
}

fun isPalindrome(number: Int): Boolean {
    var original = number
    var reversed = 0
    var temp = number

    while (temp > 0) {
        val digit = temp % 10
        reversed = reversed * 10 + digit
        temp /= 10
    }
    return original == reversed
}

fun main() {
    println(sumOfEvenNumbers())
    println(findPrimesInRange(20, 200))
    println(isPalindrome(34443))
}