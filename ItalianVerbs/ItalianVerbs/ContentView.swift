//
//  ContentView.swift
//  ItalianVerbs
//
//  Created by Maria Ghasemi on 07/11/25.
//

import SwiftUI

struct Verb: Identifiable {
    let id = UUID()
    let infinitive: String
    let translation: String
}

struct ContentView: View {
    @State private var searchText = ""
    
    let verbs = [
        // A
        Verb(infinitive: "affrontare", translation: "to face, to deal with"),
        Verb(infinitive: "accorgersi", translation: "to realize, to notice"),
        Verb(infinitive: "ammettere", translation: "to admit"),
        Verb(infinitive: "approfondire", translation: "to deepen, to study further"),
        Verb(infinitive: "assumere", translation: "to hire, to assume"),
        
        // C
        Verb(infinitive: "contribuire", translation: "to contribute"),
        Verb(infinitive: "convincere", translation: "to convince"),
        Verb(infinitive: "consentire", translation: "to allow, to enable"),
        Verb(infinitive: "comprendere", translation: "to understand, to include"),
        Verb(infinitive: "condurre", translation: "to lead, to conduct"),
        
        // D
        Verb(infinitive: "dimostrare", translation: "to demonstrate, to prove"),
        Verb(infinitive: "dubitare", translation: "to doubt"),
        Verb(infinitive: "discutere", translation: "to discuss"),
        Verb(infinitive: "diffondere", translation: "to spread, to broadcast"),
        Verb(infinitive: "desiderare", translation: "to desire, to wish"),
        
        // E–F
        Verb(infinitive: "esprimere", translation: "to express"),
        Verb(infinitive: "esigere", translation: "to demand, to require"),
        Verb(infinitive: "fingere", translation: "to pretend"),
        Verb(infinitive: "fornire", translation: "to provide, to supply"),
        Verb(infinitive: "fruire", translation: "to benefit, to enjoy"),
        
        // G–M
        Verb(infinitive: "gestire", translation: "to manage, to handle"),
        Verb(infinitive: "mantenere", translation: "to maintain, to keep"),
        Verb(infinitive: "mettere in dubbio", translation: "to question, to doubt"),
        Verb(infinitive: "meritare", translation: "to deserve"),
        Verb(infinitive: "minacciare", translation: "to threaten"),
        
        // P–R
        Verb(infinitive: "permettere", translation: "to allow, to permit"),
        Verb(infinitive: "pretendere", translation: "to demand, to claim"),
        Verb(infinitive: "proporre", translation: "to propose, to suggest"),
        Verb(infinitive: "rifiutare", translation: "to refuse, to reject"),
        Verb(infinitive: "riuscire", translation: "to manage, to succeed"),
        
        // S–T
        Verb(infinitive: "sostenere", translation: "to support, to sustain"),
        Verb(infinitive: "spiegare", translation: "to explain"),
        Verb(infinitive: "svolgere", translation: "to carry out, to perform"),
        Verb(infinitive: "tacere", translation: "to be silent"),
        Verb(infinitive: "temere", translation: "to fear, to be afraid of"),
        
        // V–Z
        Verb(infinitive: "valutare", translation: "to evaluate, to assess"),
        Verb(infinitive: "verificare", translation: "to verify, to check"),
        Verb(infinitive: "vivere", translation: "to live"),
        Verb(infinitive: "vincere", translation: "to win"),
        Verb(infinitive: "zoppicare", translation: "to limp, to stumble")
    ]
    
    var filteredVerbs: [Verb] {
        if searchText.isEmpty {
            return verbs
        } else {
            return verbs.filter { $0.infinitive.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    var body: some View {
        NavigationStack {
            List(filteredVerbs) { verb in
                VStack(alignment: .leading, spacing: 4) {
                    Text(verb.infinitive)
                        .font(.headline)
                    Text(verb.translation)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("Italian Verbs")
                        .searchable(text: $searchText, prompt: "Search verbs")
                        .listStyle(.plain)
                    }
                }
            }

            #Preview {
                ContentView()
            }
