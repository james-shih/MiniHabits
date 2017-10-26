//: Playground - noun: a place where people can play

import UIKit

//Advanced Operators
let initialBits: UInt8 = 0b000111
let invertedBits = ~initialBits

//Bitwise AND Operator
let firstSixBits: UInt8 = 0b11111100
let lastSixBits: UInt8 = 0b00111111
let middleFourBits = firstSixBits & lastSixBits

let someBits: UInt8 = 0b10110010
let moreBits: UInt8 = 0b01011110

//Bitwise XOR Operator
let firstBits: UInt8 = 0b00010100
let otherBits: UInt8 = 0b00000101
let outputBits: UInt8 = firstSixBits ^ otherBits

