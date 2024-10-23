//
//  ArtworkController.swift
//
//
//  Created by Massidé Dosso on 20/10/2024.
//

import Fluent
import Vapor

struct ArtworkController: RouteCollection {
    func boot(routes: any Vapor.RoutesBuilder) throws {
        let artworks = routes.grouped("Artworks")
        artworks.get(use: index)
        artworks.post(use: create)
    }
    
    @Sendable
    func index(req: Request) async throws -> [Artwork] {
        return try await Artwork.query(on: req.db).all()
    }
    
    @Sendable
    func create(req: Request) async throws -> Artwork
    {
        let artwork = try req.content.decode(Artwork.self)
        try await artwork.save(on: req.db )
        return artwork 
    }
    
    
    
}
