package alertas;

import javax.swing.JOptionPane;

public class cajasTexto {
    
    public static void main(String[] args) {
        
        //JOptionPane.showMessageDialog(null,"Digite un número: ");
        String minombre = JOptionPane.showInputDialog("Digite su nombre: ");
        //JOptionPane.showMessageDialog(null,"Su nombre es: " + minombre);
        
        int miedad = Integer.parseInt(JOptionPane.showInputDialog("Digite su edad: "));
        JOptionPane.showMessageDialog(null,"Su nombre es: " + minombre + " y su edad es: " + miedad);
        
    }
    
}
