//
//  SourceLinkView.swift
//  Fruits
//
//  Created by mohamed ramadan on 12/12/2023.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox {
            HStack {
                Text("Content source")
                Spacer()
                Link(destination: URL(string: "https://wikipedia.com")!) {
                    Image(systemName: "arrow.up.right.square")
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    SourceLinkView()
}
