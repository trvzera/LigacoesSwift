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
    let recusada: Bool
    let dia: String
    var body: some View {
        HStack {
            Image(pfp)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
                .padding(.trailing, 10)
                .clipped()
            VStack(alignment: .leading) {
                Text(nome)
                    .fontWeight(.semibold)
                    .foregroundStyle(perdida ? .red : .primary)
                    .fixedSize(horizontal: true, vertical: false)
                HStack {
                    Image(systemName: efetuada ? "phone.fill.arrow.up.right" : "phone.fill.arrow.down.left")
                        .foregroundStyle(.gray)
                        .fixedSize(horizontal: false, vertical: true)
                    Text(verificarChamada())
                        .foregroundColor(.secondary)
                        .fixedSize(horizontal: true, vertical: false)
                }
            }.padding(.trailing, 60)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack {
                Text(dia).foregroundColor(.gray)
                    .fixedSize(horizontal: true, vertical: false)
                Image(systemName: "info.circle")
            }
        }
        .padding(10)
    }
    func verificarChamada() -> String {
        if perdida == true {
            if recusada == true {
                return "Recusada"
            }
            return "Perdida"
        }
        else if perdida == false {
            if efetuada == true {
                return "Efetuada"
            }
            else if efetuada == false {
                return "Recebida"
            }
            
        }
        return ""
    }
}

struct btn: View {
    let icon: String
    let texto: String
    var body: some View {
        VStack{
            Image(systemName: icon).font(Font.title3.bold())
                .frame(width: 55, height: 55)
                .background(Color(.systemGray5))
                .clipShape(Circle())
            Text(texto)
                .foregroundStyle(Color(.systemGray2))
                .font(Font.subheadline)
        }
        .frame(width: 60, height: 60)
    }
}

struct ContentView: View {
    var body: some View {
        
        VStack {
            HStack(spacing: 30) {
                btn(icon: "phone", texto: "Ligar")
                btn(icon: "calendar", texto: "Planejar")
                btn(icon: "circle.grid.3x3", texto: "Teclado")
                btn(icon: "heart", texto: "Favorito")

            }.padding(50)
            Ligacoes(pfp: "max.icon", nome: "Max", efetuada: true, perdida: true, recusada: true, dia: "Hoje")
            Divider()
            Ligacoes(pfp: "verso.icon", nome: "Solanum", efetuada: false, perdida: false, recusada: false, dia: "Ontem")
            Divider()
            Ligacoes(pfp: "gabbro.icon", nome: "Gabbro", efetuada: true, perdida: false, recusada: false, dia: "Domingo")
            Divider()
            Ligacoes(pfp: "chloe.icon", nome: "Chloe", efetuada: true, perdida: true, recusada: false, dia: "27/06/2026")
            Divider()
            Ligacoes(pfp: "sean.icon", nome: "Sean", efetuada: false, perdida: true, recusada: true, dia: "20/06/2026")
            Divider()
            Ligacoes(pfp: "riebeck.icon", nome: "Riebeck", efetuada: false, perdida: true, recusada: false, dia: "10/03/2026")
            Divider()

        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
