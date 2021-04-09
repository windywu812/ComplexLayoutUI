//
//  ViewModel.swift
//  ComplexUI
//
//  Created by Windy on 09/04/21.
//

import UIKit

class ViewModel {
    
    let colorSection1: [UIColor] = [.red, .gray, .green, .blue, .black, .brown, .yellow, .cyan, .darkGray, .magenta]
    let colorSection2: [UIColor] = [.magenta, .yellow, .cyan, .darkGray, .blue, .black, .green, .gray, .brown, .red]
    
    func getColor(color: UIColor) {
        if color == .red {
            print("Red")
        } else if color == .gray {
            print("Gray")
        } else if color == .green {
            print("Green")
        } else if color == .blue {
            print("Blue")
        } else if color == .black {
            print("Black")
        } else if color == .brown {
            print("Brown")
        } else if color == .yellow {
            print("Yellow")
        } else if color == .cyan {
            print("Cyan")
        } else if color == .darkGray {
            print("DarkGray")
        } else if color == .magenta {
            print("Magenta")
        }
    }
    
}
