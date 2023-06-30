//
//  questionsBrain.swift
//  Quizabi
//
//  Created by j.bashimova on 30.06.2023.
//

import Foundation
struct questionBrain{
    let quiz = [
        Questions(q: "What is the name of the main dinosaur in Jurassic World?", a: ["Indominus Rex", "Velociraptor", "Brachiosaurus"], correctAnswer: "Indominus Rex"),
        Questions(q: "In the movie 'Megamind',what is the name of the hero?", a: ["Metroman", "Megamind", "Roxanne"], correctAnswer: "Metroman"),
        Questions(q: "Which of the quotes below is from the movie Elf?", a: ["I have a dream...", "It's a trap!", "Son of a nutcracker!"], correctAnswer: "Son of a nutcracker!"),
        Questions(q: "In the movie American Psycho,Patrick Bateman in the Senior Vice President of?", a: ["Operations", "Mergers and Acquisitions", "Marketing"], correctAnswer: "Mergers and Acquisitions"),
        Questions(q: "What is the name of the fashionable restaurant in 'American Psycho?", a: ["Floria", "Porche", "Dorsia"], correctAnswer: "Dorsia"),
        Questions(q: "What type of dinosaur is the main antagonist in Jurassic Park 2?", a: ["Velociraptor", "Spinosaurus", "Brachiosaurus"], correctAnswer: "Spinosaurus"),
        Questions(q: "In the movie Rudolph,what does Hermey the elf want to be?", a: ["Head Elf", "Dentist", "Santa"], correctAnswer: "Dentist"),
        Questions(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia"),
        Questions(q: "What is the slogan for Holiday Inn?", a: ["Stay smart", "Stay together", "Stay different"], correctAnswer: "Stay smart"),
        Questions(q: "What is the plural of Elf?", a: ["Elves", "Elfs", "Elphs"], correctAnswer: "Elfs"),
       Questions(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Questions(q: "In the film Jurassic Park,who say the line 'Line finds a way'?", a: ["John Hammond ", "Ellie Sattler", "Ian Malcolm"], correctAnswer: "Ian Malcolm"),
        Questions(q: "Where is Megamind originally from?", a: ["Earth", "The Moon", "Alternate dimension"], correctAnswer: "Alternate dimension"),
        Questions(q: "The singer of which US band starred alonside Christian Bale in the film American Psycho?", a: ["Limp Bizkit", "30 seconds to Mars", "Guns'n Roses"], correctAnswer: "30 seconds to Mars"),
        Questions(q: "Who does Megamind fall in love with?", a: ["Minion", "Roxanne", "Samantha"], correctAnswer: "Roxanne"),
        Questions(q: "Where does Megamind live?", a: ["Metrocity", "Metropolis", "Detroit"], correctAnswer: "Metrocity")
        

    ]
    
    var qpass=0
    var score=0
    
   mutating func check(_ userAnswer:String)->Bool{
        if userAnswer == quiz[qpass].correct{
            score+=1
            return true
        }else{
            return false
        }
    }
    func getScore()->Int{
        return score
    }
    func getQuestionText() -> String {
        return quiz[qpass].text
    }
    func getAnswers() -> [String] {
           return quiz[qpass].answer
       }
    
    func getProgress()->Float{
        let progress=Float(qpass+1)/Float(quiz.count)
        return progress
    }
    mutating func nextQ(){
        if qpass+1<quiz.count
        {
            qpass += 1
        }else{
            qpass=0
            score=0
        }
    }
    
}

