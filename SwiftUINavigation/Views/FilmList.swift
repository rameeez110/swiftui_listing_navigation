//
//  FilmList.swift
//  SwiftUINavigation
//
//  Created by Rameez Hasan on 16/06/2024.
//

import SwiftUI

struct FilmList: View {
    var body: some View {
        NavigationSplitView {
            List(films) { film in
                NavigationLink {
                    FilmDetail(film: film)
                } label: {
                    FilmRow(film: film)
                }
            }
            .navigationTitle("Films")
        } detail: {
            Text("Select a Film")
        }
    }
}

#Preview {
    FilmList()
}
