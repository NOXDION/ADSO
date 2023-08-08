package com.noxdion.adsob;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    Button btnIngresar;

    EditText cajaUsuario, cajaContraseña;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        /* buscar */
        btnIngresar = findViewById(R.id.btnIngresar);
        cajaUsuario = findViewById(R.id.cajaUsuario);
        cajaContraseña = findViewById(R.id.cajaContraseña);



        btnIngresar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                /*mostrar mensaje*/
                Toast.makeText(MainActivity.this, "Hola mundo", Toast.LENGTH_SHORT).show();
                //startActivity(new Intent(MainActivity.this, MenuPrincipal.class));

                String miNombre = cajaUsuario.getText().toString();
                String miContraseña = cajaContraseña.getText().toString();
                Toast.makeText(MainActivity.this, "Mi usuario es "+ miNombre, Toast.LENGTH_SHORT).show();
                Toast.makeText(MainActivity.this, "La contraseña es "+ miContraseña, Toast.LENGTH_SHORT).show();

            }
        });


    }
}