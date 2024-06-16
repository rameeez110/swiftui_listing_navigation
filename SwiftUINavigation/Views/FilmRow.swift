//
//  FilmRow.swift
//  SwiftUINavigation
//
//  Created by Rameez Hasan on 16/06/2024.
//

import SwiftUI

struct FilmRow: View {
    var film: Film

    var body: some View {
        HStack {
            RemoteImageView(
                url: film.image!,
                placeholder: {
                  Image("placeholder").frame(width: 80,height: 80) // etc.
                },
                image: {
                    $0.resizable().scaledToFit().clipShape(Circle()).frame(width: 80,height: 80) // etc.
                }
            )
            Text(film.Title)
        }
    }
}

#Preview {
    Group {
        FilmRow(film: films[0])
        FilmRow(film: films[1])
    }
}
