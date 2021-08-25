//
//  ViewModel.swift
//  Basic3ImageAsObject
//
//  Created by Daniel Watson on 19/08/2021.
//

import SwiftUI

class RowViewModel: ObservableObject {
    var i: Int
    init(i: Int){
        self.i = i
    }
    func getImage(_ data: [Bool]) -> String {
        return data[i] ? "star.fill" : "star"
    }
    func click() -> Int {
        return i
    }
}
