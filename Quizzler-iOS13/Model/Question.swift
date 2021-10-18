//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Virtual Machine on 11/10/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation


struct Question {
    let question: String
    let answer: String
    
    init (q: String, a: String){
        question = q
        answer = a
    }
    
}
