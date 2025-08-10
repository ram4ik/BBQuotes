//
//  StringExt.swift
//  BBQuotes
//
//  Created by Ramill Ibragimov on 7/8/25.
//

extension String {
    func removeSpaces() -> String {
        self.replacingOccurrences(of: " ", with: "")
    }

    func removeCaseAndSpaces() -> String {
        self.removeSpaces().lowercased()
    }
}
