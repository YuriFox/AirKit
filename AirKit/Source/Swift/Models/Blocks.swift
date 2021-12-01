//  Copyright © 2021 Yurii Lysytsia. All rights reserved.

// MARK: - Void

/// The return type of closure block that don’t explicitly specify a value and a return type, that is, an empty block.
public typealias VoidBlock = () -> Void

/// The return type of closure block that don’t explicitly specify a value and a return type, that is, an empty block but throwable.
public typealias VoidThrowsBlock = () throws -> Void

// MARK: - Value

/// The return type of closure block that a value type is `Generic` and don’t specify a return type.
public typealias ValueBlock<T> = (T) -> Void

/// The return type of closure block that a value type are two `Generic` and don’t specify a return type.
public typealias DoubleValueBlock<T1, T2> = (T1, T2) -> Void

/// The return type of closure blocks that a value type is `Bool` and don’t specify a return type.
public typealias BoolBlock = ValueBlock<Bool>
