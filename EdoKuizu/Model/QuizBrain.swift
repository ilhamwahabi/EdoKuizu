//
//  QuizBrain.swift
//  EdoKuizu
//
//  Created by Ilham Wahabi on 05/12/23.
//

import Foundation

var allQuizzes = [
    Quiz(question: "Japan is composed of five main islands.", answer: "FALSE"),
    Quiz(question: "Japanese hiragana and katakana characters share the same phonetic sounds.", answer: "FALSE"),
    Quiz(question: "The Aokigahara Forest is located at the base of Mount Fuji.", answer: "FALSE"),
    Quiz(question: "Japan has never experienced a major earthquake.", answer: "FALSE"),
    Quiz(question: "Sumo wrestlers follow a vegetarian diet.", answer: "FALSE"),
    Quiz(question: "The Japanese tea ceremony originated in the 19th century.", answer: "FALSE"),
    Quiz(question: "Japan has only one time zone.", answer: "FALSE"),
    Quiz(question: "Kyoto was the capital of Japan before Tokyo.", answer: "TRUE"),
    Quiz(question: "Japanese calligraphy originated from Chinese calligraphy.", answer: "TRUE"),
    Quiz(question: "The island of Okinawa has a subtropical climate.", answer: "TRUE"),
    Quiz(question: "Hokkaido is the southernmost of Japan's four main islands.", answer: "FALSE"),
    Quiz(question: "The official currency of Japan is the yuan.", answer: "FALSE"),
    Quiz(question: "Mt. Everest is located in Japan.", answer: "FALSE"),
    Quiz(question: "The Great Wave off Kanagawa is a famous painting by Hokusai.", answer: "TRUE"),
    Quiz(question: "The Japanese alphabet consists of only hiragana characters.", answer: "FALSE"),
    Quiz(question: "The Shinkansen is a high-speed train in Japan.", answer: "TRUE"),
    Quiz(question: "Kyudo is a traditional Japanese martial art.", answer: "TRUE"),
    Quiz(question: "Wasabi is a type of Japanese soy sauce.", answer: "FALSE"),
    Quiz(question: "The flag of Japan features a red sun on a white background.", answer: "TRUE"),
    Quiz(question: "Japan is the world's largest producer of automobiles.", answer: "TRUE"),
    Quiz(question: "The Koto is a traditional Japanese musical instrument.", answer: "TRUE"),
    Quiz(question: "Japanese summers are known for heavy snowfall.", answer: "FALSE"),
    Quiz(question: "Tokyo Disneyland was the first Disney theme park outside of the United States.", answer: "TRUE"),
    Quiz(question: "Japanese baseball uses the same rules as American baseball.", answer: "FALSE"),
    Quiz(question: "The Japanese word 'sakura' refers to traditional martial arts.", answer: "FALSE")
]

struct QuizBrain {
    var quizzes = allQuizzes.shuffled().prefix(upTo: 10)
    
    var quizNumber = 0
    var score = 0
    
    mutating func randomizeQuizzes() {
        quizzes = allQuizzes.shuffled().prefix(upTo: 10)
    }
    
    mutating func checkAnswer(answer: String) {
        if (answer == quizzes[quizNumber].answer) {
            score += 1
        }
    }
    
    func getQuestionText() -> String {
        return quizzes[quizNumber].question
    }
    
    func getScore() -> Int {
        return score
    }
    
    mutating func nextQuiz() -> Int {
        if (self.quizNumber < self.quizzes.count - 1) {
            self.quizNumber += 1
        } else {
            self.quizNumber = 0
        }
        
        return quizNumber
    }
}
