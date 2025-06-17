//
//  ListBootCamp.swift
//  SwiftUIBasics
//
//  Created by Mohamed Ashik Buhari on 19/12/24.
//

import SwiftUI

struct ListBootCamp: View {
    @State var ListOfFruits : [String] = [
        "Apple","Orange","PineApple","mango","guevo"
    ]
    @State var vegetables : [String] = [
        "Potato","Cabbage","Drumstick"
    ]
    @State private var isExpanded = true
    
    
    var body: some View {
        NavigationView {
            List{
                //section with drop down
                Section(
                    content: {
                        if isExpanded{
                            ForEach(ListOfFruits, id: \.self) { fruits in
                                Text("\(fruits.capitalized)")
                                    .font(.title)
                            }
                        }
                    },
                    header: {
                        
                        HStack{
                            Text("Fruits")
                            Spacer()
                            Image(systemName: isExpanded ? "chevron.down" : "chevron.up")
                                .onTapGesture {
                                    withAnimation {
                                                                    isExpanded.toggle() // Toggle expansion
                                                                }
                                }
                        }

                    }
                )
            .navigationTitle("Grocery List")
            .navigationBarItems(trailing: EditButton())
            
            
                
                
                Section {
                    ForEach(ListOfFruits, id: \.self) { fruits in
                        Text("\(fruits.capitalized)")
                            .padding(20)
                    }
                    //                .onDelete { IndexSet in
                    //                    delete(IndexSet: IndexSet)
                    //                }
                    //or
                    .onDelete(perform: deleteIndex(indexSet:))
                    //or
                    .onDelete(perform: deleteIndex)
                    .onMove(perform: moveFruits)
                    .listRowBackground(Color.pink)
                } header: {
                    
                    HStack {
                        Text("Fruits")
                        Image(systemName: "plus")
                    }.foregroundStyle(.red)
                        .font(.title)
                    
                }
                
                Section {
                    ForEach(vegetables, id: \.self) { veggies in
                        Text("\(veggies.capitalized)")
                    }
                    
                } header: {
                    Text("Veggies")
                }
                .toolbar {
                            EditButton() // Enables edit mode for reordering
                        }
                
                
            }
            .accentColor(.orange)
            //list of list style
            .listStyle(GroupedListStyle())
            //.listStyle(PlainListStyle())
            //.listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),trailing:addButton )
           
        }
        .accentColor(.red)
    }
    
    func deleteIndex(indexSet: IndexSet){
        print(indexSet)
        ListOfFruits.remove(atOffsets: indexSet)
    }
    func moveFruits(from source: IndexSet, to destination: Int) {    // Corrected parameter names
        print(source, destination)
            ListOfFruits.move(fromOffsets: source, toOffset: destination)
        }
    
    func AddFruits(Fruit : String){
        ListOfFruits.append(Fruit)
    }
    
    var addButton : some View{
        Button("Add"){
            AddFruits(Fruit: "Grapes")
        }
    }
}

#Preview {
    ListBootCamp()
}
