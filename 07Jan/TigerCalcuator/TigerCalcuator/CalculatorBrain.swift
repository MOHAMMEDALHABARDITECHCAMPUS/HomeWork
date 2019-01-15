//
//  CalculatorBrain.swift
//  TigerCalcuator
//
//  Created by mac on 03/05/1440 AH.
//  Copyright © 1440 MOAHMMED. All rights reserved.
//

import Foundation

class CalculatorBrain {
    
    typealias CalcElement = (Num : Double , Op : Character)
    
    
    var NumwithOpArray : [CalcElement] = []

    func Restart() { NumwithOpArray = [] }
    
    func  Add(Number : Double , Op : Character) { self.NumwithOpArray.append((Number , Op)) }
    
    
    // هنا البحث عن العمليات الحسابيه الاول الي هي مثل لاقواس ثم القسمه الخ ..
    
    func CalculateMultiplayAndDevidedBy () {
        
// بنسبه للضرب والقسمه وغيرها لا تكبتها من الكيابورد ولا تجيبها من راسك انسخها من الاستوري بورد
        
        for (index , one) in NumwithOpArray.enumerated() {
            if one.Op == "×" || one.Op == "÷" {
                let AfterCurrent = NumwithOpArray[index + 1]
                var result : CalcElement!
                if one.Op == "×" {
                   result = (one.Num * AfterCurrent.Num , AfterCurrent.Op)
                    
                }
              else if one.Op == "÷" {
                    result = (one.Num / AfterCurrent.Num , AfterCurrent.Op)
                }
                NumwithOpArray.remove(at: index)
                NumwithOpArray.remove(at: index)
                NumwithOpArray.insert(result, at: index)
                CalculateMultiplayAndDevidedBy()
                break
            }
        }
    }
    
    // هنا فنكشن يقوم بعملية الطرح
    func CalcluateAllMinuses() {
        for (index , one ) in NumwithOpArray.enumerated() {
            if one.Op == "-" {
                let afterCurrent = NumwithOpArray[index + 1]
                NumwithOpArray.remove(at: index) ; NumwithOpArray.remove(at: index)
                let newCalcElement = (one.Num - afterCurrent.Num , afterCurrent.Op)
                NumwithOpArray.insert(newCalcElement, at: index)
                CalcluateAllMinuses()
                break
            }
        }
                
            }
    
    
    // هنا فنكشن يستخدم للجمع
    
    func Result() -> String {
        
        CalculateMultiplayAndDevidedBy()
        
        CalcluateAllMinuses()
        
        return String(self.NumwithOpArray.reduce(0, {$0 + $1.Num})) }
    
    
    
    }



