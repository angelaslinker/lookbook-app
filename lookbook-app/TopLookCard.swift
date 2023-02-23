//
//  TopLookCard.swift
//  lookbook-app
//
//  Created by Angela Slinker on 2/23/23.
//

import SwiftUI

struct TopLookCard: View {
    var look: Look
    
    var body: some View {
        HStack {
            Image(look.lookArtString)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:40, height: 40)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(look.name)
                    .font(.headline)
                Text(look.location)
                    .font(.subheadline)
                    .foregroundColor(.accentColor)
            }
            Spacer()
            MoreButtonView(look: look)
        }.padding()
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.4), lineWidth: 1)
        )
        .shadow(radius: 1)
    }
}

struct MoreButtonView: View {
    var look: Look
    
    var body: some View {
        NavigationLink(destination: LookDetailView(look: look)){
        VStack {
                Circle().frame(width: 5, height: 5)
                Circle().frame(width: 5, height: 5)
                Circle().frame(width: 5, height: 5)
            }
            .foregroundColor(.accentColor)
        }
    }
}
struct TopLookCard_Previews: PreviewProvider {
    static var previews: some View {
        TopLookCard(look: looklist[1])
            .previewLayout(.fixed(width: 380, height: 75))
    }
}

