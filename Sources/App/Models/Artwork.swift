//
//  Artwork.swift
//
//
//  Created by Massidé Dosso on 20/10/2024.
//

import Vapor
import Fluent

final class Artwork: Model, Content, @unchecked Sendable {
    static let schema = "Art" // Table MySQL artworks
    
    @ID(custom: "idArt")
    var id: UUID?
    
    @Field(key: "nameArt")
    var nameArt: String
    
    @Field(key: "nameArtistArt")
    var nameArtistArt: String
    
    @Field(key:"courantArtistiqueArt")
    var courantArtistiqueArt: String 
    
    @Field(key: "imageArt")
    var imageArt: String
    
    @Field(key: "descriptionArt")
    var descriptionArt: String
    
    @Field(key: "dateArt")
    var dateArt: String
    
    
    init() {}
    
    init(id: UUID? = nil, nameArt: String, nameArtistArt: String, imageArt: String, descriptionArt: String, dateArt: String) {
        self.id = id
        self.nameArt = nameArt
        self.nameArtistArt = nameArtistArt
        self.imageArt = imageArt
        self.descriptionArt = descriptionArt
        self.dateArt = dateArt
    }
    
}
