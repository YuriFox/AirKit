import AirKit

// MARK: - Convertible

public extension Float {
    /// Returns `Float` value.
    ///
    ///     let float: Float = 10.0
    ///     float.toDouble() // Double(10.0)
    ///
    func toDouble() -> Double { .init(self) }
}


let float: Float = 10.0
float.toDouble() // Double(10.0)
