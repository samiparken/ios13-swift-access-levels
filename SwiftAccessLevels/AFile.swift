//
//  AFile.swift
//  SwiftAccessLevels
//
//  Created by Angela Yu on 14/09/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class AClass {
    
    //Global variables, also called class properties.
    private var aPrivateProperty = "private property"
    
    fileprivate var aFilePrivateProperty = "fileprivate property"
    
    var anInternalProperty = "internal property"
    
    func methodA () {
        
        var aLocalVariable = "local variable"
        
        //Step 1. Try to print aLocalVariable Here - Possible
        print("\(aLocalVariable) printed from methodA in AClass")
        
        //Step 3. Try to print aPrivateProperty Here - Possible
        
        //Step 6. Try to print aFilePrivateProperty Here - Possible
        
        //Step 9. Try to print anInternalProperty Here - Possible
    }
    
    func methodB () {
        
        //Step 2. Try to print aLocalVariable Here - Not Possible
        
        //Step 4. Try to print aPrivateProperty Here - Possible
    }
    
}

class AnotherClassInTheSameFile {
    
    init() {
        
        //Step 5. Try to print aPrivateProperty Here - Not Possible
        
        //Step 7. Try to print aFilePrivateProperty Here - Possible
        print("\(AClass().aFilePrivateProperty) printed from methodA in AClass")

        
    }
}
