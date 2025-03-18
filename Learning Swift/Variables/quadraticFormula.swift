var a: Double = 2.0
var b: Double = 5.0
var c: Double = 3.0

var root1: Double
var root2: Double
var discriminant: Double

discriminant = (b * b) - (4 * a * c) // b^2 −4ac
discriminant = discriminant.squareRoot()

root1 = -b + discriminant
root1 = root1 / (2 * a)
print("Root 1 is \(root1)")

root2 = -b - discriminant
root2 = root2 / (2 * a)
print("Root 2 is \(root2)")
