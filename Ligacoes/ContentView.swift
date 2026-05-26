//
//  ContentView.swift
//  Ligacoes
//
//  Created by COTEMIG on 26/05/26.
//

import SwiftUI

struct Ligacoes: View {
    let pfp: String
    let nome: String
    let efetuada: Bool
    let perdida: Bool
    let dia: String
    var body: some View {
        HStack {
            Image(pfp)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .padding(.horizontal, 10)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(nome)
                    .fontWeight(.semibold)
                    .foregroundStyle(perdida ? .red : .primary)
                HStack {
                    Image(systemName: efetuada ? "phone.fill.arrow.up.right" : "phone.fill.arrow.down.left")
                        .foregroundStyle(.gray)
                    Text(perdida ? "Perdida" : efetuada ? "Efetuada" : "Recebida")
                        .foregroundColor(.secondary)
                }
            }.padding(.trailing, 100)
            HStack {
                Text(dia).foregroundColor(.gray)
                Image(systemName: "info.circle")
            }
        }
        .frame(width: 340)
        .padding(10)
        .overlay(
                Rectangle()
                    .frame(height: 2)
                    .foregroundColor(.gray.opacity(0.3)),
                alignment: .bottom
            )

    }
}

struct btn: View {
    let icon: String
    let texto: String
    var body: some View {
        VStack{
            Image(systemName: icon).font(Font.largeTitle.bold())
            Text(texto)
        }
    }
}

struct ContentView: View {
    var body: some View {
        
        VStack {
            HStack {
                btn(icon: "phone.fill", texto: "Ligar").padding(.trailing, 30)
                btn(icon: "calendar", texto: "Planejar").padding(.trailing, 30)
                btn(icon: "circle.grid.3x3", texto: "Teclado").padding(.trailing, 30)
                btn(icon: "circle.grid.3x3", texto: "Teclado").padding(.trailing, 30)

            }
            Ligacoes(pfp: "pfp1.icon", nome: "Pessoa 1", efetuada: true, perdida: false, dia: "Hoje")
            Ligacoes(pfp: "pfp2.icon", nome: "Pessoa 2", efetuada: false, perdida: true, dia: "Hoje")
            Ligacoes(pfp: "pfp1.icon", nome: "Pessoa 3", efetuada: false, perdida: false, dia: "Hoje")
            Ligacoes(pfp: "pfp2.icon", nome: "Pessoa 4", efetuada: true, perdida: false, dia: "Hoje")
            Ligacoes(pfp: "pfp2.icon", nome: "Pessoa 5", efetuada: false, perdida: true, dia: "Hoje")

        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
