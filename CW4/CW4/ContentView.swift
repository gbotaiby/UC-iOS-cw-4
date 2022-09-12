//
//  ContentView.swift
//  CW4
//
//  Created by Ghalia on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var item = ""
    @State var myGrocery = ["kinder", "indomie", "doritos", "pepsi", "tomato"]
    var body: some View {
        
        VStack{
            List(myGrocery, id:\.self ) { grocery in
                HStack {
                    Image(grocery)
                        .resizable()
                        .scaledToFit()
                Text(grocery)
                
                }

            }
        
        HStack{
            
            Button {
                myGrocery.append(item)
            } label: {
                Image(systemName: "plus")
                    .font(.largeTitle)
                    .background(.red)
            }
            
            TextField("add item", text: $item)
            
            
            Button {
                myGrocery.remove(at: 0)
                
            } label: {
                Image(systemName: "minus")
                    .font(.largeTitle)
                    .background(.yellow)
            }
            Button {
                
                myGrocery.append(myGrocery.randomElement() ?? "")
            }
        label: {
            
            Image(systemName: "questionmark.circle")
                .font(.largeTitle)
                .background(.cyan)
        }

        }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
