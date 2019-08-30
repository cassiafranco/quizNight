//
//  ImaViewController.swift
//  quizNigth
//
//  Created by Cassia Franco on 16/08/2019.
//  Copyright © 2019 Cassia Franco. All rights reserved.
//

import UIKit

class ImaViewController: UIViewController {
    
    var cities: [String] = ["Curitiba", "Toronto", "New York", "Whasington"]
    var options : [String] = ["São Paulo", "Vancouver", "Paris"]
    var opcaoCerta : Int!
    
    
    func embaralhar (vetor : [String]) ->[String]{
        var vetorModificavel = vetor
        
        if vetor.count < 2 {return vetor}
        
        for i in 0 ..< vetor.count - 1{
            let j = Int(arc4random_uniform(UInt32(vetor.endIndex - i))) + i
            if i != j{
                // troca de elementos
                vetorModificavel.swapAt(i, j)
            }
            return vetorModificavel
        }
        
        func carregarQuestao(){
            if(cities.count == 0){
                return
            }
            let indice = Int (arc4random_uniform(UInt32(cities.count)))
            let cidade = cities[indice]
            cities.remove(at: indice)
            
            let imageName = cidade.replacingOccurrences(of: " ", with: "").lowercased() + ".jpg"
            dicaImg.image=UIImage(named: imageName)
            
            var minhasOpcoes = embaralhar(vetor: options)
            opcaoCerta = 0
            for (indice,opcao) in minhasOpcoes.enumerated(){
                if opcao == cidade{
                    opcaoCerta = indice
                    break
                }
            }
            if opcaoCerta >= 4{
                // trocar a opcao certa para estar entre as 4 primeiras
                let novaOpcaoCerta = Int(arc4random_uniform(UInt32(4)))
                minhasOpcoes.swapAt(opcaoCerta,novaOpcaoCerta)
                opcaoCerta = novaOpcaoCerta
            }
            var opcao = 0
            for  view in stackBotoes.subviews{
                if let btn = view as? UIButton{
                    btn.setTitle(minhasOpcoes[opcao], for: .normal)
                    opcao += 1
                    
                }
            }
        }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
