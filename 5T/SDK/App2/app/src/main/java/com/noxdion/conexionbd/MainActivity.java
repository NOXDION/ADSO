package com.noxdion.conexionbd;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import java.util.HashMap;
import java.util.Map;
public class MainActivity extends AppCompatActivity {

    Button btnIngresar;
    EditText cajaUsuario, cajaContraseña;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        btnIngresar = findViewById(R.id.btnIngresar);
        cajaUsuario = findViewById(R.id.cajaUsuario);
        cajaContraseña = findViewById(R.id.cajaContraseña);

        btnIngresar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                /*String miNombre = cajaUsuario.getText().toString();
                String miContraseña = cajaContraseña.getText().toString();
                Toast.makeText(MainActivity.this, "Mi usuario es "+ miNombre + "\nLa contraseña es "+ miContraseña, Toast.LENGTH_SHORT).show();
                startActivity(new Intent(MainActivity.this, MenuPrincipal.class));*/
                validarUsuario("https://novasync.000webhostapp.com/Buscar.php?id=" + cajaUsuario.getText().toString());
            }
        });
    }

    private void validarUsuario(String URL) {
        StringRequest stringRequest = new StringRequest(Request.Method.POST, URL, new Response.Listener<String>() {
            @Override
            public void onResponse(String response) {
                if(!response.isEmpty()){
                    Toast.makeText(getApplicationContext(),"Mensaje: " + response, Toast.LENGTH_SHORT).show();
                    Intent intent = new Intent(getApplicationContext(), MenuPrincipal.class);
                    startActivity(intent);
                }else{
                    Toast.makeText(MainActivity.this,"Usuario o contraseña incorrecta", Toast.LENGTH_SHORT).show();
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                Toast.makeText(MainActivity.this, error.toString(), Toast.LENGTH_SHORT).show();
            }
        }){

            @Override
            protected Map<String, String> getParams() throws AuthFailureError {

                Map<String, String> parametros = new HashMap<String, String>();
                parametros.put("usuario", cajaUsuario.getText().toString());
                parametros.put("password", cajaContraseña.getText().toString());
                
                return parametros;
            }
        };
        RequestQueue requestQueue = Volley.newRequestQueue(this);
        requestQueue.add(stringRequest);
    }
}

