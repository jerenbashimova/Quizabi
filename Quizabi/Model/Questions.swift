//
//  Questions.swift
//  Quizabi
//
//  Created by j.bashimova on 30.06.2023.
//

import Foundation

struct Questions{
    let text:String
    let answer:[String]
    let correct:String
    
    init(q: String, a: [String], correctAnswer:String) {
        text = q
        answer = a
        correct=correctAnswer
    }
}
