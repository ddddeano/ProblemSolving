//
//  DataModel.swift
//  Basic3ImageAsObject
//
//  Created by Daniel Watson on 19/08/2021.
//

import Foundation

class DataModel: ObservableObject {
    @Published var data = [false, true]
    func setTruth(_ i: Int) {
        for index in data.indices { data[index] = false }
        data[i] = true
        print(data)
    }
}
