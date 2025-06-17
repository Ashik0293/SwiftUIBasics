//
//  environmentObject.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 26/02/25.
//

import SwiftUI

//method2
class EnvironmentViewModel: ObservableObject{
    
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

//method1
class FruitViewModel2: ObservableObject{
    @Published var fruitArray : [FruitModel] = []
    @Published var isLoading : Bool = false
    
    
    
    init(){
        getFruits()
    }
    
    func getFruits(){
        let fruit1 = FruitModel(name: "pomegranate", count: 4)
        let fruit2 = FruitModel(name: "gauva", count: 6)
        let fruit3 = FruitModel(name: "watermelon", count: 10)
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

struct environmentObject: View {
    
    
    //method1
    @StateObject var viewModel :FruitViewModel2 = FruitViewModel2()
    
    //method2
    @StateObject var EnvironmentVM :EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.fruitArray){ item in
                    NavigationLink(destination: noEnvironmentView(selectedItem: item.name, viewModel: viewModel)) {
                        Text(item.name)
                    }
                }
            }.navigationTitle("environmentObjectDemo")
        }.environmentObject(EnvironmentVM)
    }
}



struct noEnvironmentView : View {
    //method1
    let selectedItem : String
    //method1
    @ObservedObject var viewModel :FruitViewModel2
    
    
    //method2 not used here no heriarachy for environmenrt thats the differnce between metho 1 and method2
    
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            NavigationLink(destination: finalView(viewModel: viewModel)) {
                    Text("\(selectedItem )")
                        .font(.headline)
                        .foregroundStyle(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(30)
                }
            }
           
            
        }
    }

struct finalView:View {
    //method1
    @ObservedObject var viewModel :FruitViewModel2
    
    //method2
    @EnvironmentObject var environmentVM : EnvironmentViewModel
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.red,Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            ScrollView{
                VStack(spacing: 20){
                    ForEach(viewModel.fruitArray){ item in
                        Text("\(item.name)")
                    }
                }
                .foregroundStyle(Color.white)
                .font(.largeTitle)
                
                VStack(spacing: 20){
                    ForEach(environmentVM.fruitArray){ item in
                        Text("\(item.name)")
                    }
                }
                .foregroundStyle(Color.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    environmentObject()
    //noEnvironmentView()
    //finalView()
}
