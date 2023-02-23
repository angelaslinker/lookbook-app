//
//  LookCardView.swift
//  lookbook-app
//
//  Created by Angela Slinker on 2/23/23.
//

import SwiftUI

struct LookCard: View {
    var look: Look
    
    var body: some View {
        VStack {
            Image(look.lookArtString)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 180, height: 300)
            VStack{
                Text(look.name)
                    .font(.headline)
                    .lineLimit(2)
                Text(look.location)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                NavigationLink(destination:
                    LookDetailView(look: look)){
                    Text("Read More").font(.caption)
                        .foregroundColor(.accentColor)
                }
            }
            .padding()
            Spacer()
        }
        .frame(height: 400)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(.sRGB, red: 150/255, green:
                                150/255, blue: 150/255, opacity:
                                0.1), lineWidth: 1)
        )
        .shadow(radius: 1)
    }
}

struct LookCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LookCard(look: looklist[0])
                .previewLayout(.fixed(width:
                                        300, height: 510))
            LookCard(look: looklist[1])
                .previewLayout(.fixed(width: 300,
                                      height: 510))
        }

    }
}
