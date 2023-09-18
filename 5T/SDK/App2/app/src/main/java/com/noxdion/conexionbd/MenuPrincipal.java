package com.noxdion.conexionbd;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;


public class MenuPrincipal extends AppCompatActivity {

    Button btnRegresar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu_principal);

        btnRegresar = findViewById(R.id.btnRegresar);

        btnRegresar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                Toast.makeText(MenuPrincipal.this, "Welcome Back", Toast.LENGTH_SHORT).show();
                startActivity(new Intent(MenuPrincipal.this, MainActivity.class));
            }
        });

    }
}