package alertas;

import javax.swing.JOptionPane;
import java.util.ArrayList;
import java.util.List;

public class switchCase {
    
    public static void main(String[] args){
        
        List<String> productos = new ArrayList<String>();
        List<Float> precios = new ArrayList<Float>();
        
        String opcion = JOptionPane.showInputDialog("1 --- Papas $5000\n2 --- Doritos $8000\n3 --- Cheetos $3000\n4 --- Gansito $2000\n5 --- Salir");
        
        while(!opcion.equals("5")){
        
            switch(opcion) {
                case "1":
                    JOptionPane.showMessageDialog(null,"Usted eligió Papas ");
                    productos.add("Papas");
                    precios.add(5000f);
                    break;
                case "2":
                    JOptionPane.showMessageDialog(null,"Usted eligió Doritos ");
                    productos.add("Doritos");
                    precios.add(8000f);
                    break;
                case "3":
                    JOptionPane.showMessageDialog(null,"Usted eligió Cheetos ");
                    productos.add("Cheetos");
                    precios.add(3000f);
                    break;
                case "4":
                    JOptionPane.showMessageDialog(null,"Usted eligió Gansito ");
                    productos.add("Gansito");
                    precios.add(2000f);
                    break;
            }
        
            opcion = JOptionPane.showInputDialog("1 --- Papas $5000\n2 --- Doritos $8000\n3 --- Cheetos $3000\n4 --- Gansito $2000\n5 --- Salir");
        
        }
        
        JOptionPane.showMessageDialog(null,productos);
        JOptionPane.showMessageDialog(null,precios);
        float sum = 0.0f;
        for (float numero : precios){
            sum += numero;
        }
        
        JOptionPane.showMessageDialog(null,sum);
        
    }
    
}
