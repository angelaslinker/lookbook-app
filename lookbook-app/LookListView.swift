//
//  LookListView.swift
//  lookbook-app
//
//  Created by Angela Slinker on 2/23/23.
//

import SwiftUI

struct LookListView: View {
    var body: some View {
        NavigationView {
        ScrollView {
            VStack(alignment: .leading){
                ScrollView(.horizontal) {
                    HStack(spacing: 10) {
                        ForEach(looklist, id: \.id) {
                            look in
                            LookCard(look: look)
                        }
                    }.frame(height: 400)
                }
                Text("Recent Looks")
                    .font(.largeTitle)
                    .bold()
                VStack {
                    ForEach(looklist, id: \.id) { look
                        in
                        TopLookCard(look: look)
                        }
                    }
                }.padding()
            }.navigationBarTitle("My Look Book")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LookListView()
    }
}
