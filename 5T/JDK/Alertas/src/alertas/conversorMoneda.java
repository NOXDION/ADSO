package alertas;

import javax.swing.JOptionPane;

public class conversorMoneda {
    
    public static void main(String[] args){
    
        float dolarPeso = 4139.39f;
        float dolarEuro = 4609.38f;

        int pesos = Integer.parseInt(JOptionPane.showInputDialog("Digite la cantidad de pesos a convertir en Dólares y Euros: "));
        
        float dolares = pesos / dolarPeso;
        float euros = pesos / dolarEuro;
        
        JOptionPane.showMessageDialog(null,pesos + " Pesos equivale en Dólares a: " + dolares + " y en Euros a " + euros);
    
    }
    
}
