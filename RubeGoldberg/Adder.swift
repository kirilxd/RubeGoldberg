//
//  Adder.swift
//  RubeGoldberg
//
//  Created by Кирилл Рязанцев on 17.05.2021.
//

import Foundation

enum AdderError: Error{
    case reduceAndLoop;
}

class Adder{
    static var addersCreated = 0
    var logger: LoggerProtocol
    var numbers: [Int] = []
    
    init(numbers:[Int], logger: LoggerProtocol){
        self.numbers = numbers;
        self.logger = logger;
        Adder.addersCreated+=1;
    }
    
    func add() throws -> Int{
        let reduceResult = numbers.reduce(0, +);
        var loopResult = 0;
        for number in numbers{
            loopResult += number;
        }
        switch reduceResult {
        case loopResult:
            print("All is fine")
        default:
            throw AdderError.reduceAndLoop
        }
        return reduceResult
    }
    
    public func outputResult(){
        do {
            let additionResult = try self.add();
            let result = String(additionResult)
            self.logger.message = result
            self.logger.printMessage();
        } catch AdderError.reduceAndLoop {
            print("This never happen")
        }catch{
            print("This too")
        }
        
    }
}
