//
//  ContentView.swift
//  day 8
//
//  Created by mac on 20/08/2022.
//

import SwiftUI

struct ContentView: View {
    let colors = [Color.indigo,Color.accentColor,Color.orange,Color.mint]
    @State var myNote = ""
    @State var selected : Color = Color.indigo
    @State var SecondView = ""
    var body: some View {
        ZStack{
            Color.cyan.ignoresSafeArea()
        NavigationView{
            
            VStack{
                Divider()
                    .padding()
                Spacer()
                Text("اختر لونك المفضل")
                    .font(.title)
                HStack {
                        ForEach(colors, id:\.self){
                            color in
                           
                                Circle()
                                    .fill(color)
                                    .frame(width: 60, height: 60)
                                    .onTapGesture {
                                        selected = color
                                    }
                                }
                }.padding()
                Spacer()
                Text("ماذا تريد ان تكتب")
                    .font(.title)
                    Spacer()
                TextField("اكتب هنا", text: $myNote)
                    
                    .background(.green)
                    .frame(width: 400, height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding()
                    
                Spacer()
                NavigationLink(destination: secondView(myC: selected, myS: myNote)){
                    Text("حفظ")
                        .font(.largeTitle)
                        .frame(width: 80, height: 50)
                        
                        .background(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
             .padding()
                .navigationTitle("ملاحظاتي 📝")
                } .padding()
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
        
    

