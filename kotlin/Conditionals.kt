fun main() {
    // Function to determine the type of triangle using if statements
    fun determineTriangleType(side1: Double, side2: Double, side3: Double): String {
        return if (side1 == side2 && side2 == side3) {
            "Equilateral"
        } else if (side1 == side2 || side2 == side3 || side1 == side3) {
            "Isosceles"
        } else {
            "Scalene"
        }
    }

    // Example sides of the triangle
    val side1 = 5.0
    val side2 = 5.0
    val side3 = 8.0
    println(determineTriangleType(side1, side2, side3))


    fun calculateSalary(hoursWorked: Double, hourlyRate: Double): Double {
        val regularHours = 40.0
        val overtimeRate = 1.5
        return if (hoursWorked <= regularHours) {
            hoursWorked * hourlyRate
        } else {
            val overtimeHours = hoursWorked - regularHours
            (regularHours * hourlyRate) + (overtimeHours * hourlyRate * overtimeRate)
        }
}

    val hoursWorked = 45.0
    val hourlyRate = 20.0

    // Calculate and print the total salary
    val totalSalary = calculateSalary(hoursWorked, hourlyRate)
    println("The total salary for $hoursWorked hours at an hourly rate of $$hourlyRate is $$totalSalary.")
}