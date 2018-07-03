//
//  Check_Permutation.swift
//  Check_Permutation
//
//  Created by Andrew Lewis on 7/3/18.
//  Copyright © 2018 Andrew Lewis. All rights reserved.
//

import Foundation

class Check_Permutation{
    
    let inputOutput = IO()
    
    func startingPoint (){
        
        print("Please enter the first string.")
        let firstString = inputOutput.getInput()
        
        print("Please enter the second string.")
        let secondString = inputOutput.getInput()
        
        checkPermutation(firstString: firstString, secondString: secondString)
        
    }
    
    func checkPermutation(firstString:String, secondString:String){
        
    }
    
}
