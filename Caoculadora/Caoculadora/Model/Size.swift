//
//  Size.swift
//  Caoculadora
//
//  Created by Alessandra Pereira on 26/10/20.
//

// MARK: - Size
enum Size: Int, CaseIterable {
    case xsmall = 4
    case small = 5
    case medium = 6
    case large = 7
    case xlarge = 8
    
    var description: String {
        switch self {
        case .xsmall: return "Mini"
        case .small: return "Pequeno"
        case .medium: return "Médio"
        case .large: return "Grande"
        case .xlarge: return "Gigante"
        }
    }
}
