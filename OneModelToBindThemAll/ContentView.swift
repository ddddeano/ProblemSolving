//

import SwiftUI

class ContentViewModel: ObservableObject {
    
    var data = [true,false,true]
    
        func setTruth(_ i: Int) {
            data[0] = false
            data[1] = false
            data[2] = false
            data[i] = true
            print(data)
    }
}

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.data.indices, id: \.self) { i in
                Row(rowViewModel: RowViewModel(i, viewModel))
            }
        }
    }
}

class RowViewModel: ObservableObject {
    
    var i: Int
    var list: ContentViewModel
    @Published var imageString = String()
    
    init(_ i: Int,_ list: ContentViewModel) {
        self.i = i
        self.list = list
        setImageName()
    }
    
    func setImageName() {
        self.imageString = list.data[i] ? "star" : "star.fill"
    }
}

struct Row: View {
    @StateObject var rowViewModel: RowViewModel
    var body: some View {
        Image(systemName: rowViewModel.imageString)
            .onTapGesture {
                rowViewModel.list.setTruth(rowViewModel.i)
                rowViewModel.setImageName()
                print(rowViewModel.imageString)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
