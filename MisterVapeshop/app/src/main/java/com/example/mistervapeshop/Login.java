package com.example.mistervapeshop;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.google.android.material.textfield.TextInputEditText;
import com.vishnusivadas.advanced_httpurlconnection.PutData;


public class Login extends AppCompatActivity {

    TextInputEditText textInputEditTextUsername, textInputEditTextPassword;
    Button buttonLogin;
    TextView textViewSignup;
    ProgressBar progressBar;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        textInputEditTextUsername = findViewById(R.id.username);
        textInputEditTextPassword = findViewById(R.id.password);
        textViewSignup = findViewById(R.id.signUpText);
        buttonLogin = findViewById(R.id.buttonLogin);
        progressBar = findViewById(R.id.progress);

        textViewSignup.setOnClickListener(v -> {
            Intent intent = new Intent(getApplicationContext(),SignUp.class);
            startActivity(intent);
            finish();
        });

        buttonLogin.setOnClickListener(v -> {
            String username, password;
            username = String.valueOf(textInputEditTextUsername.getText());
            password = String.valueOf(textInputEditTextPassword.getText());

            if (!username.equals("") && !password.equals("")) {

                progressBar.setVisibility(View.VISIBLE);
                //Start ProgressBar first (Set visibility VISIBLE)
                Handler handler = new Handler();
                boolean post = handler.post(new Runnable() {
                    @Override
                    public void run() {
                        //Starting Write and Read data with URL
                        //Creating array for parameters
                        String[] field = new String[2];
                        field[0] = "username";
                        field[1] = "password";
                        //Creating array for data
                        String[] data = new String[2];
                        data[0] = username;
                        data[1] = password;

                        PutData putData = new PutData("http://192.168.0.138/PISP/mobile/login.php", "POST", field, data);
                        if (putData.startPut()) {
                            if (putData.onComplete()) {
                                progressBar.setVisibility(View.GONE);
                                String result = putData.getResult();
                                if (result.equals("Login Success")) {
                                    Toast.makeText(getApplicationContext(), result, Toast.LENGTH_SHORT).show();
                                    Intent intent1 = new Intent(getApplicationContext(), HomeActivity.class);
                                    startActivity(intent1);
                                    finish();
                                } else {
                                    Toast.makeText(getApplicationContext(), result, Toast.LENGTH_SHORT).show();
                                }
                                //End ProgressBar (Set visibility to GONE)
                                Log.i("PutData", result);
                            }
                        }
                        //End Write and Read data with URL
                    }
                });
            } else {
                Toast.makeText(getApplicationContext(), "All Fields are REQUIRED!", Toast.LENGTH_SHORT).show();
            }

        });


    }
}