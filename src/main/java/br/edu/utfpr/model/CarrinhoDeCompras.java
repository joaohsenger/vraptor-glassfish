/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.utfpr.model;

import br.edu.utfpr.model.Produto;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.enterprise.context.SessionScoped;


/**
 *
 * @author Joao Henrique
 */
@SessionScoped
public class CarrinhoDeCompras implements Serializable{

    private List<Produto> itens = new ArrayList<Produto>();

    public List<Produto> getTodosOsItens() {
        return itens;
    }

    public void adicionaItem(Produto item) {
        itens.add(item);
    }

}
