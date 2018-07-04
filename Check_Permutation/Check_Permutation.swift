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
        
        let permutation = checkPermutation(firstString: firstString, secondString: secondString)
        
      if permutation == false {
       
       	print("The two strings are not permutations of each other.")
       
      }else{
       
       	print("The two strings are permutations of each other.")
       	
      }   
    }
    
    func checkPermutation(firstString:String, secondString:String) -> Bool{
    
    	var permutation = false
        var index = 0
        var count = 0
    	
    	if firstString.count != secondString.count {
    		permutation = false
    		return permutation
    	}
    	
    	while(count == 0){
    		
    		for letters in firstString.indices {
                for characters in firstString.indices{
                    if firstString[letters] == firstString[characters]{
                        count+=1
                    }
                }
                
                for characters in secondString.indices{
                    if firstString[letters] == secondString[characters]{
                        count-=1
                    }
                }
    		}
    
    		index+=1
    		
    		if index > firstString.count && count == 0 {
                permutation = true
    			return permutation
    		}else if index > firstString.count && count != 0{
    			return permutation
    		}
    	}
        
        return permutation
    }
}
