package alertas;

import javax.swing.JOptionPane;

public class salario {
    
    public static void main(String[] args){
        
        float salario = 50000;
    
        String empresa = JOptionPane.showInputDialog("Digite el nombre de su empresa: ");
        int dias = Integer.parseInt(JOptionPane.showInputDialog("Digite la cantidad de días que trabajó: "));
    
        float salarioFinal = salario * dias;
        
        JOptionPane.showMessageDialog(null,"Usted trabajó " + dias + " días en la empresa " + empresa + " y ganó un salario total de: " + salarioFinal);
        
    }
    
}
