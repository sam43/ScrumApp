//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by A S M Sayem on 8/4/23.
//

import SwiftUI

struct ThemePicker: View {
    @Binding var selection: Theme
    
    var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases) { theme in
                ThemeView(theme: theme)
                    .tag(theme)
//                HStack {
//                    Label(theme.name, systemImage: "gear")
//                        .background(Color.red)
//                        .foregroundColor(Color.blue)
//                    Spacer()
//                        .frame(width: 30, height: 30)
//                        .background(Color.black)
//                }
            }
        }
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        ThemePicker(selection: .constant(.bubblegum))
    }
}
