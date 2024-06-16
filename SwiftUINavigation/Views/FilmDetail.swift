//
//  FilmDetail.swift
//  SwiftUINavigation
//
//  Created by Rameez Hasan on 16/06/2024.
//

import SwiftUI

struct FilmDetail: View {
    var film: Film

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                RemoteImageView(
                    url: film.image!,
                    placeholder: {
                      Image("placeholder").frame(width: 80,height: 80) // etc.
                    },
                    image: {
                        $0.resizable().scaledToFit()
                    }
                )
                Text(film.Title)
                    .font(.title)

                HStack {
                    Text(film.Rated)
                    Spacer()
                    Text(film.Released)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)

                Divider()

                Text("About \(film.Title)")
                    .font(.title2)
                Text(film.Plot)
            }
            .padding()
        }
        .navigationTitle(film.Title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    FilmDetail(film: films[0])
}
