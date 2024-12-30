//
//  Question.swift
//  Office IQ
//
//  Created by Stacy Griffy on 9/25/24.
//

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
            Question(questionText: "What type of farm does Dwight own?",
                     possibleAnswers: [
                        "Corn farm",
                        "Potato Farm",
                        "Beet farm",
                        "Apple orchard"
                     ],
                     correctAnswerIndex: 2),
            Question(questionText: "Which of these is NOT one of Michael Scott's alter egos?",
                     possibleAnswers: [
                        "Prison Mike",
                        "Date Mike",
                        "Warehouse Mike",
                        "Michael Scarn"
                     ],
                     correctAnswerIndex: 2),
            Question(questionText: "What is the name of Pam and Jim's first child?",
                     possibleAnswers: [
                        "Cece",
                        "Melissa",
                        "Angela",
                        "Penny"
                     ],
                     correctAnswerIndex: 0),
            Question(questionText: "What is the name of the bar where the staff often go for drinks after work?",
                     possibleAnswers: [
                        "Chili's",
                        "Poor Richard's",
                        "Scranton Pub",
                        "The Electric City Bar"
                     ],
                     correctAnswerIndex: 1),
            Question(questionText: "What is Dwight's middle name?",
                     possibleAnswers: [
                        "Kurt",
                        "Karl",
                        "Klaus",
                        "Kristopher"
                     ],
                     correctAnswerIndex: 0),
            Question(questionText: "What is the name of Angela's favorite cat?",
                     possibleAnswers: [
                        "Bandit",
                        "Sprinkles",
                        "Fluffy",
                        "Mr. Ash"
                     ],
                     correctAnswerIndex: 1),
            Question(questionText: "Complete the quote: 'Bears. Beets. _____.'",
                     possibleAnswers: [
                        "Battlestar Galactica",
                        "Business Sales",
                        "Bobblehead Dolls",
                        "Barbie Dolls"
                     ],
                     correctAnswerIndex: 0),
            Question(questionText: "What does Kevin famously spill all over the office floor?",
                     possibleAnswers: [
                        "Coffee",
                        "Chili",
                        "Soup",
                        "Salsa"
                     ],
                     correctAnswerIndex: 1),
            Question(questionText: "What does Michael yell when Toby returns to the office?",
                     possibleAnswers: [
                        "Oh God, please no!",
                        "Why are you the way that you are?",
                        "No! No! No! No!",
                        "Not again!"
                     ],
                     correctAnswerIndex: 2),
            Question(questionText: "Who said: 'I talk a lot, so I've learned to tune myself out.'?",
                     possibleAnswers: [
                        "Kelly Kapoor",
                        "Michael Scott",
                        "Andy Bernard",
                        "Erin Hannon"
                     ],
                     correctAnswerIndex: 0),
            Question(questionText: "What does Michael accidentally hit Meredith with?",
                     possibleAnswers: [
                        "His car",
                        "A baseball",
                        "A chair",
                        "A door"
                     ],
                     correctAnswerIndex: 0),
            Question(questionText: "What does Michael order at Hooters that he thinks is very classy?",
                     possibleAnswers: [
                        "Chicken wings",
                        "A salad",
                        "Chicken breast, hold the chicken",
                        "A milkshake"
                     ],
                     correctAnswerIndex: 2),
            Question(questionText: "In the episode 'The Injury', what does Michael burn his foot on?",
                     possibleAnswers: [
                        "A panini press",
                        "A George Foreman grill",
                        "Hot coals",
                        "A curling iron"
                     ],
                     correctAnswerIndex: 1)
    ]
}
