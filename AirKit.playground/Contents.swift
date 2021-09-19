import UIKit

public protocol StringFormattedConvertible {
    /// The object's value expressed as a human-readable string.
    func toString(format: String) -> String
}

// MARK: - Implementations | BinaryInteger

extension StringFormattedConvertible where Self: BinaryInteger & CVarArg {
    public func toString(format: String) -> String { .init(format: format, self) }
    public func toString(integerDigits: Int) -> String { toString(format: "%0\(integerDigits)d") }
}

extension Int8: StringFormattedConvertible { }

extension UInt8: StringFormattedConvertible { }

extension Int16: StringFormattedConvertible { }

extension UInt16: StringFormattedConvertible { }

extension Int32: StringFormattedConvertible { }

extension UInt32: StringFormattedConvertible { }

extension Int64: StringFormattedConvertible { }

extension UInt64: StringFormattedConvertible { }

extension Int: StringFormattedConvertible { }

extension UInt: StringFormattedConvertible { }

// MARK: - Implementations | BinaryFloatingPoint

extension StringFormattedConvertible where Self: BinaryFloatingPoint & CVarArg {
    public func toString(format: String) -> String { .init(format: format, self) }
    public func toString(fractionDigits: Int) -> String { toString(format: "%.\(fractionDigits)f") }
}

extension Float: StringFormattedConvertible { }

extension Double: StringFormattedConvertible { }


Double(123.45).toString(fractionDigits: 0)
Double(123.45).toString(fractionDigits: 1)
Double(123.45).toString(fractionDigits: 2)
Double(123.45).toString(fractionDigits: 3)

Int(5).toString(integerDigits: 5)

let f = NumberFormatter()
f.minimumIntegerDigits
f.minimumFractionDigits
