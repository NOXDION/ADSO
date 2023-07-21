package alertas;

import javax.swing.JOptionPane;

public class area {
    
    public static void main(String[] args){
            
        int base = Integer.parseInt(JOptionPane.showInputDialog("Digite la base: "));
        int altura = Integer.parseInt(JOptionPane.showInputDialog("Digite la altura: "));

        float area = (base * altura) / 2;

        JOptionPane.showMessageDialog(null,"El área de su triángulo es: " + area);
        
    }
    
}
