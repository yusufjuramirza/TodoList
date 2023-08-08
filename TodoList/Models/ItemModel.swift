//
//  ItemModel.swift
//  TodoList
//
//  Created by Akbarjon Juramirzaev on 08/08/23.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
