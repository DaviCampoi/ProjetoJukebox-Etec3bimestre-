/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package maquina.pkg2;

import java.math.BigDecimal;
import java.text.NumberFormat;

/**
 *
 * @author Aluno
 */
public class ConverteMoeda {
  
      public String ConvMoeda(String valTela)
      {
        BigDecimal valor = new BigDecimal(valTela);
        
        NumberFormat nf = NumberFormat.getCurrencyInstance();  
        String formatado = nf.format(valor);
        
        return formatado;
        
      }
    


}

