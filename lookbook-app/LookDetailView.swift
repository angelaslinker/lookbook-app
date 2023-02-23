//
//  LookDetailView.swift
//  lookbook-app
//
//  Created by Angela Slinker on 2/23/23.
//

import SwiftUI

struct LookDetailView: View {
    var look: Look
    var body: some View {
            ScrollView {
                VStack {
                    Image(look.lookArtString)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 300)
                        .cornerRadius(8)
                    HStack {
                        Text("Location")
                            .font(.headline)
                            .foregroundColor(.accentColor)
                        Text(look.location)
                            .font(.subheadline)
                        Spacer()
                    }.padding([.leading, .trailing])
                    HStack {
                        Text("Date")
                            .font(.headline)
                            .foregroundColor(.accentColor)
                        Text(look.publishDate)
                            .font(.subheadline)
                        Spacer()
                    }.padding()
                    HStack {
                        Text("Details:")
                            .font(.headline)
                            .foregroundColor(.accentColor)
                        Spacer()
                    }.padding([.leading])
                    Text(look.Description)
                        .font(.subheadline)
                        .padding([.leading, .trailing])
                    
                    Spacer()
                }.navigationBarTitle(look.location)
                    .padding()
        }.accentColor(.red)
    }
}

struct LookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LookDetailView(look: looklist[1])
    }
}
