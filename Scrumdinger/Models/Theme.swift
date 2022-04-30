//
//  Theme.swift
//  Scrumdinger
//
//  Created by Joshua Baker on 4/30/22.
//

import SwiftUI

enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavendar
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
            case    .bubblegum,
                    .buttercup,
                    .lavendar,
                    .orange,
                    .periwinkle,
                    .poppy,
                    .seafoam,
                    .sky,
                    .tan,
                    .teal,
                    .yellow: return .black
            
            case    .indigo,
                    .magenta,
                    .navy,
                    .oxblood,
                    .purple: return .white
        }
    }
    
    var mainColor: Color {
        Color(rawValue)
    }
}
