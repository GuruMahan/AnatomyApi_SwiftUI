//
//  splitView.swift
//  AnatomyApi
//
//  Created by Guru Mahan on 29/12/22.
//

enum DemoScreen: String, Codable {
    case first, second, third,four,five,six,seven

    var title: String {
        rawValue.capitalized
    }
}

import SwiftUI

struct splitView: View {
   
    @Environment(\.presentationMode) var presentationMode
    @State var nextPage = false
   @State var listView = ListView()
      @State
        private var selection: DemoScreen? = .first
    
        var body: some View {
            NavigationSplitView {
                HStack{
                    Button {
                        self.presentationMode.wrappedValue.dismiss()

                    } label: {
                        Text("Back")
                    }
                    .padding()
                    Spacer()
                }
                sidebarContent
                VStack{
                    Button {
                        nextPage = true
                    } label: {
                        Text("Next")
                    }
                }
            } detail: {
                detailContent
            }
            .fullScreenCover(isPresented: $nextPage) {
               listView
            }
        }
}

extension splitView {
    var sidebarContent: some View {
        List {
            link(to: .first)
            link(to: .second)
            link(to: .third)
            link(to: .four)
            link(to: .five)
            link(to: .six)
            link(to: .seven)
        }
    }

    func link(to page: DemoScreen) -> some View {
        NavigationLink(value: page) {
            Text(page.title)
        }
        
    }
}

extension splitView {

    @ViewBuilder
    var detailContent: some View {
        if let selection = selection {
            detailContent(for: selection)
                .buttonStyle(.bordered)
        } else {
            Text("No selection")
        }
    }
    
    @ViewBuilder
    func detailContent(for screen: DemoScreen) -> some View {
            switch screen {
            case .first:
                Button("First button")
                {
                }
            case .second: Button("Second button") {}
            case .third: Button("Second button") {}
            case .four:
                Button("First button") {}
            case .five:
                Button("First button") {}
            case .six:
                Button("First button") {}
            case .seven:
                Button("First button") {}
            }
        }
}

struct splitView_Previews: PreviewProvider {
    static var previews: some View {
        splitView()
    }
}
