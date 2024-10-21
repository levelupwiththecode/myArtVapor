//
//  Artwork.swift
//  
//
//  Created by Massidé Dosso on 20/10/2024.
//

import Vapor
import Fluent

final class Artwork: Model, Content, @unchecked Sendable {
    static let schema = "artworks" // Table MySQL artworks
    
    @ID(custom: .id)
    var id: Int?
    
    @Field(key: "title")
    var title: String?
    
    @Field(key: "artist")
    var artist: String?
    
    @Field(key: "image_name")
    var imageName: String?
    
    @Field(key: "year")
    var year: Date?
    
    @Field(key: "description")
    var description: String?
    
    init() { }
    
    init(id: Int? = nil, title: String? = nil, artist: String? = nil, imageName: String? = nil, year: Date? = nil, description: String? = nil) {
        self.id = id
        self.title = title
        self.artist = artist
        self.imageName = imageName
        self.year = year
        self.description = description
    }
    
}
