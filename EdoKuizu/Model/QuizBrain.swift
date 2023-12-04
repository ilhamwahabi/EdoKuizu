//
//  QuizBrain.swift
//  EdoKuizu
//
//  Created by Ilham Wahabi on 05/12/23.
//

import Foundation

struct QuizBrain {
    var quizzes = [
        Quiz(question: "Japan is composed of five main islands.", answer: "FALSE"),
        Quiz(question: "Japanese hiragana and katakana characters share the same phonetic sounds.", answer: "FALSE"),
        Quiz(question: "The Aokigahara Forest is located at the base of Mount Fuji.", answer: "FALSE"),
        Quiz(question: "Japan has never experienced a major earthquake.", answer: "FALSE"),
        Quiz(question: "Sumo wrestlers follow a vegetarian diet.", answer: "FALSE"),
        Quiz(question: "The Japanese tea ceremony originated in the 19th century.", answer: "FALSE"),
        Quiz(question: "Japan has only one time zone.", answer: "FALSE"),
        Quiz(question: "Kyoto was the capital of Japan before Tokyo.", answer: "TRUE"),
        Quiz(question: "Japanese calligraphy originated from Chinese calligraphy.", answer: "TRUE"),
        Quiz(question: "The island of Okinawa has a subtropical climate.", answer: "TRUE")
    ]
    
    var quizNumber = 0
    
    func checkAnswer(answer: String) -> Bool {
        return answer == self.quizzes[self.quizNumber].answer
    }
    
    func getQuestionText() -> String {
        return self.quizzes[self.quizNumber].question
    }
    
    mutating func nextQuiz() {
        if (self.quizNumber < self.quizzes.count - 1) {
            self.quizNumber += 1
        } else {
            self.quizNumber = 0
        }
    }
}
