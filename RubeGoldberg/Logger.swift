//
//  Logger.swift
//  RubeGoldberg
//
//  Created by Кирилл Рязанцев on 13.05.2021.
//

import Foundation

protocol LoggerProtocol{
    var message: String { get set };
    mutating func printMessage() -> Void
}

struct Logger: LoggerProtocol{
    
    var message: String = ""
    
    mutating func printMessage() -> Void {
        if self.message.isEmpty {
            print("Nothing to print")
        }else{
            print("Result: \(self.message)")
        }
    }
    
    init(_ message: String){
        self.message = message;
    }
}
