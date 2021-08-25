//
//  ContentView.swift
//  Basic3ImageAsObject
//
//  Created by Daniel Watson on 19/08/2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dataModel: DataModel
    
    var body: some View {
        ForEach(dataModel.data.indices, id: \.self) { i in
            RowView(rowViewModel: RowViewModel(i: i)).environmentObject(dataModel)
        }
    }
}
struct RowView: View {
    @EnvironmentObject var dataModel: DataModel
    var rowViewModel: RowViewModel
    var body: some View {
        Image(systemName: rowViewModel.getImage(dataModel.data))
            .onTapGesture {
                dataModel.setTruth(rowViewModel.click())
            }
    }
}
