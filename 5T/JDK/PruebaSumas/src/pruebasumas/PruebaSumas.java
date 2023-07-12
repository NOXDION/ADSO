/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package pruebasumas;

import java.util.Scanner;

/**
 *
 * @author SENA
 */
public class PruebaSumas {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        int numero1 = 0;
        int numero2 = 0;
        int numero3 = 0;
        int suma = 0;
        
        Scanner miTeclado = new Scanner(System.in);
        
        System.out.println("Señor usuario digite el primer digito: ");
        numero1 = miTeclado.nextInt();
        System.out.println("Usted digito el numero " + numero1);
        
        System.out.println();
        
        System.out.println("Señor usuario digite el segundo digito: ");
        numero2 = miTeclado.nextInt();
        System.out.println("Usted digito el numero " + numero2);
        
        System.out.println();
        
        System.out.println("Señor usuario digite el tercer digito: ");
        numero3 = miTeclado.nextInt();
        System.out.println("Usted digito el numero " + numero3);
        
        System.out.println();
        
        suma = numero1 + numero2 + numero3;
        System.out.println("La suma es " + suma);
        
    }
    
}
