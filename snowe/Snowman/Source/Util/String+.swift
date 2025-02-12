//
//  String+.swift
//  Snowman
//
//  Created by Yonghyun on 2021/11/24.
//

import Foundation

extension String {
    func toDate() -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFormatter.locale = Locale(identifier: "ko_KR")
        dateFormatter.timeZone = TimeZone(abbreviation: "KST")

        return dateFormatter.date(from: self)!
    }
}
