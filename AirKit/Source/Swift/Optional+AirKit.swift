//  Copyright © 2021 Yurii Lysytsia. All rights reserved.

// MARK: - Extensions | String

extension Optional where Wrapped == String {
    /// Returns `true` if the string `isEmpty` or `nil` otherwise returns `false`.
    ///
    ///     let string: String? = nil
    ///     string?.isEmpty // nil
    ///     string.isEmptyOrNil // true
    ///
    ///     let string_0: String? = ""
    ///     string_0?.isEmpty // Optional(true)
    ///     string_0.isEmptyOrNil // true
    ///
    ///     let string_1: String? = " "
    ///     string_1?.isEmpty // Optional(false)
    ///     string_1.isEmptyOrNil // false
    ///
    ///     let string_2: String? = "abc"
    ///     string_2?.isEmpty // Optional(false)
    ///     string_2.isEmptyOrNil // false
    ///
    var isEmptyOrNil: Bool { self?.isEmpty != false }
    
    /// Returns `true` if the string `isBlank` or `nil` otherwise returns `false`.
    ///
    ///     let string: String? = nil
    ///     string?.isBlank // nil
    ///     string.isBlankOrNil // true
    ///
    ///     let string_0: String? = ""
    ///     string_0?.isBlank // Optional(true)
    ///     string_0.isBlankOrNil // true
    ///
    ///     let string_1: String? = " "
    ///     string_1?.isBlank // Optional(true)
    ///     string_1.isBlankOrNil // true
    ///
    ///     let string_2: String? = "abc"
    ///     string_2?.isBlank // Optional(false)
    ///     string_2.isBlankOrNil // false
    ///
    var isBlankOrNil: Bool { self?.isBlank != false }
}