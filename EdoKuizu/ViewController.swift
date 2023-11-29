//
//  ViewController.swift
//  EdoKuizu
//
//  Created by Ilham Wahabi on 29/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    var quizzes = [
        ["question": "Japan is composed of five main islands.", "answer": "FALSE"],
        ["question": "Japanese hiragana and katakana characters share the same phonetic sounds.", "answer": "FALSE"],
        ["question": "The Aokigahara Forest is located at the base of Mount Fuji.", "answer": "FALSE"],
        ["question": "Japan has never experienced a major earthquake.", "answer": "FALSE"],
        ["question": "Sumo wrestlers follow a vegetarian diet.", "answer": "FALSE"],
        ["question": "The Japanese tea ceremony originated in the 19th century.", "answer": "FALSE"],
        ["question": "Japan has only one time zone.", "answer": "FALSE"],
        ["question": "Kyoto was the capital of Japan before Tokyo.", "answer": "TRUE"],
        ["question": "Japanese calligraphy originated from Chinese calligraphy.", "answer": "TRUE"],
        ["question": "The island of Okinawa has a subtropical climate.", "answer": "TRUE"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        questionLabel.text = quizzes[1]["question"]!
    }


}

