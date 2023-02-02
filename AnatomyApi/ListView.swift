//
//  ListView.swift
//  AnatomyApi
//
//  Created by Guru Mahan on 29/12/22.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var viewModel = AnatomyViewModel()
    @State var list : innerData?
    @State var listViewShow = false
    @State var listToSplit = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        
        VStack{
            headerView
                .frame(height: 50)
            if listViewShow{
                
                List {
                    
                    ForEach(0..<(viewModel.dataList?.data.count ?? 0)) { data in
                        listView(list: viewModel.dataList?.data[data])
                    }
                    
                    
                }
            }else {
                
                List {
                    
                    ForEach(0..<(viewModel.dataList?.data.count ?? 0)) { data in
                        eachView(list: viewModel.dataList?.data[data])
                        
                    }
                    
                    
                }
            }
            
            Button {
                
                listViewShow.toggle()
                
                
            } label: {
                
                Label("Change", image: "")
                    .frame(width: 200,height: 40)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(20)
                //.padding(.bottom,)
            }
            .fullScreenCover(isPresented: $listToSplit) {
                splitView()
            }
            
            
        }
    }
    @ViewBuilder func eachView(list:innerData?) -> some View{
        
        ScrollView{
           
            VStack {
               
                HStack {
                    VStack{
                        Text("idY:\(list?.idNation ?? "" )")
                            .background(Color.red)
                            .padding(5)
                        Text("pop:\(list?.population ?? 0) ")
                            .background(Color.green)
                            .cornerRadius(4)
                        
                    }
                    
                    VStack{
                        Text("nat:\(list?.nation ?? "" )")
                            .background(Color.brown)
                            .padding(5)
                        Text("idY:\(list?.idYear ?? 0) ")
                            .background(Color.teal)
                            .cornerRadius(10)
                        
                    }
                    
                }
            }
        }
       
    }
    
    @ViewBuilder func listView(list:innerData?) -> some View{
        
        HStack {
            VStack{
                Text("idY:\(list?.idNation ?? "" )")
                    .background(Color.mint)
                    .padding(5)
                Text("pop:\(list?.population ?? 0) ")
                    .background(Color.orange)
                    .cornerRadius(4)
                
            }
            
            VStack{
                Text("nat:\(list?.nation ?? "" )")
                    .background(Color.cyan)
                    .padding(5)
                Text("idY:\(list?.idYear ?? 0) ")
                    .background(Color.pink)
                    .cornerRadius(10)
                
            }
            
        }
        
    }
    @ViewBuilder var headerView:some View{
        
        ZStack {
            
            LinearGradient(colors:[Color(hex: "1A7BDC"),Color(hex: "56B8FF")], startPoint: .leading, endPoint:.trailing).ignoresSafeArea()
            HStack{
                Button {
                    self.presentationMode.wrappedValue.dismiss()
                
                } label: {
                    Image(systemName:"arrow.backward")
                        .foregroundColor(.white)
                }
                .padding(.top,-20)
                
                
                VStack {
                    Text("Anatomy Intro Assessment")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(Font.system(size: 18))
                    Text(" Api Calls")
                        .foregroundColor(.white)
                        .font(Font.system(size: 12))
                    
                        .padding(.top,1)
                        .padding(.leading,-30)
                }
                .padding()
                Button {
                   listToSplit = true
                
                } label: {
                    Image(systemName:"arrow.forward")
                        .foregroundColor(.white)
                }
                .padding(.top,-20)
            }
            .padding(.leading,-50)
            
        }
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
