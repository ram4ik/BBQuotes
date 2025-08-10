//
//  ViewModel.swift
//  BBQuotes
//
//  Created by Ramill Ibragimov on 7/8/25.
//

import Foundation

@Observable
@MainActor
class ViewModel {

    enum FetchStatus {
        case notStarted
        case fetchig
        case successQuote
        case successEpisode
        case failed(error: Error)
    }

    private(set) var status: FetchStatus = .notStarted

    private let fetcher = FetchService()

    var quote: Quote
    var character: Char
    var episode: Episode

    init() {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase

        let quoteData = try! Data(contentsOf: Bundle.main.url(forResource: "samplequote", withExtension: "json")!)
        quote = try! decoder.decode(Quote.self, from: quoteData)

        let characterData = try! Data(contentsOf: Bundle.main.url(forResource: "samplecharacter", withExtension: "json")!)
        character = try! decoder.decode(Char.self, from: characterData)

        let episodeData = try! Data(contentsOf: Bundle.main.url(forResource: "sampleepisode", withExtension: "json")!)
        episode = try! decoder.decode(Episode.self, from: episodeData)
    }

    func getQuoteData(for show: String) async {
        status = .fetchig

        do {
            quote = try await fetcher.fetchQuote(from: show)
            character = try await fetcher.fetchCharacter(quote.character)
            character.death = try await fetcher.fetchDeath(for: character.name)

            status = .successQuote
        } catch {
            status = .failed(error: error)
        }
    }

    func getEpisode(for show: String) async {
        status = .fetchig

        do {
            if let unwrappedEpisode = try await fetcher.fetchEpisode(from: show) {
                episode = unwrappedEpisode
            }

            status = .successEpisode
        } catch {
            status = .failed(error: error)
        }
    }
}
