//
//  main.swift
//  RubeGoldberg
//
//  Created by Кирилл Рязанцев on 13.05.2021.
//

import Foundation

var message = Logger("Hello world");
print("Enter numbers")
var s: String = readLine()!;
let digits = s.compactMap{$0.wholeNumberValue}
let adder = Adder(numbers: digits, logger: message);
adder.outputResult();
