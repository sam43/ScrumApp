//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by A S M Sayem on 8/4/23.
//

import SwiftUI

struct ThemeView: View {
    let theme: Theme
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(Color.white)
            Label(theme.name, systemImage: "paintpalette")
                .padding(4)
                .foregroundColor(.accentColor)
                .background(theme.mainColor)
                .cornerRadius(4)
        }
        .foregroundColor(theme.accentColor)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(theme: .lavender)
    }
}
