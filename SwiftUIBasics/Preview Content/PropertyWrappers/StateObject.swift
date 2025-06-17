//
//  StateObject.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 26/02/25.
//

import SwiftUI
import Observation //without this its working

struct FruitModel : Identifiable{
    let id: String = UUID().uuidString
    let name :String
    let count : Int
}


//method2 // No need for @Published and No need for @StateObject or @ObservedObject // SwiftUI automatically updates
@Observable
class User {
    var name: String = "John Doe"  // No need for @Published
}

//method1 with stateobject and observableobject
class FruitViewModel: ObservableObject{
    @Published var fruitArray : [FruitModel] = []
    @Published var isLoading : Bool = false
    
    init(){
        getFruits()
    }
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Apple", count: 4)
        let fruit2 = FruitModel(name: "orange", count: 6)
        let fruit3 = FruitModel(name: "grapes", count: 10)
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){ [self] in
            isLoading = false
            fruitArray.append(fruit1)
            fruitArray.append(fruit2)
            fruitArray.append(fruit3)
        }
        
    }
    func deleteFruit(index:IndexSet){
        fruitArray.remove(atOffsets: index)
        
    }
}

struct StateObjectExplore: View {
    
    //    @State var fruitArray: [FruitModel] = [
    //        FruitModel(name: "Ashik", count: 5)
    //    ]
    @State var isRefresh = false
    @StateObject var fruitViewModel :FruitViewModel = FruitViewModel()
    
    
    
    //in method2 we can use both
    //1.
    //var user : User = User()
    //2.
    @State private var user = User()
    
    
    
    // @State var fruitArray: [FruitModel] = []
    
    var body: some View {
        NavigationView {
            List{
                Text(user.name)
                Text(isRefresh ? "Refrehed" : "not Refreshed")
                if fruitViewModel.isLoading {
                    ProgressView()
                }else {
                    ForEach(fruitViewModel.fruitArray){ item in
                        HStack{
                            Text("\(item.name)")
                            Text("\(item.count)")
                        }
                    } .onDelete(perform:fruitViewModel.deleteFruit)
                }
                Button("Reload") {
                    user.name = "Ashik"
                    let fruit2 = FruitModel(name: "orange", count: 6)
                    fruitViewModel.fruitArray.append(fruit2)
                }
            }.listStyle(GroupedListStyle())
                .navigationTitle("FruitList")
                .navigationBarItems(trailing:
                                        NavigationLink(destination: RandomScreen( user: user, fruitViewModel: fruitViewModel), label: {
                    Image(systemName: "arrow.right")
                        .font(.title)
                }))
                .onAppear{
                    //fruitViewModel.getFruits()
                }
            //its call every time view appears fruitViewModel.getFruits() call multiple append.
                .refreshable {
                   isRefresh = true
                }
            
        }
        
        
    }
    
    
}

struct RandomScreen:View {
    var user : User
    @Environment(\.presentationMode) var presentation
    @ObservedObject var fruitViewModel :FruitViewModel
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            VStack{
                Text("\(user.name)")
                ForEach(fruitViewModel.fruitArray){item in
                    Text("\(item.name)")
                    Text("\(item.count)")
                }
            }
            
            
            Button("Go Back") {
                presentation.wrappedValue.dismiss()
            }
        }
    }
}

#Preview {
    StateObjectExplore()
}
