package com.example.mistervapeshop;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.google.android.material.textfield.TextInputEditText;
import com.vishnusivadas.advanced_httpurlconnection.PutData;

public class Reserve extends AppCompatActivity {

    TextInputEditText textInputEditTextFullname,textInputEditTextAddress, textInputEditTextContact,textInputEditTextProductname,textInputEditTextExpectedDate,textInputEditTextNote;
    Button buttonReserve;
    ProgressBar progressBar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_reserve);

        textInputEditTextFullname = findViewById(R.id.fullname);
        textInputEditTextAddress = findViewById(R.id.address);
        textInputEditTextContact = findViewById(R.id.contact);
        textInputEditTextProductname = findViewById(R.id.productname);
        textInputEditTextExpectedDate = findViewById(R.id.expectedDate);
        textInputEditTextNote = findViewById(R.id.Note);
        progressBar = findViewById(R.id.progress);
        buttonReserve = findViewById(R.id.buttonReserve);

        buttonReserve.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String fullname, address, contact, productname, expectedDate, Note;
                fullname = String.valueOf(textInputEditTextFullname.getText());
                address = String.valueOf(textInputEditTextAddress.getText());
                contact = String.valueOf(textInputEditTextContact.getText());
                productname = String.valueOf(textInputEditTextProductname.getText());
                expectedDate = String.valueOf(textInputEditTextExpectedDate.getText());
                Note = String.valueOf(textInputEditTextNote.getText());


                if (!fullname.equals("") && !address.equals("") && !contact.equals("") && !productname.equals("")&& !expectedDate.equals("")&& !Note.equals("")) {

                    progressBar.setVisibility(View.VISIBLE);
                    //Start ProgressBar first (Set visibility VISIBLE)
                    Handler handler = new Handler();
                    handler.post(new Runnable() {
                        @Override
                        public void run() {
                            //Starting Write and Read data with URL
                            //Creating array for parameters
                            String[] field = new String[6];
                            field[0] = "fullname";
                            field[1] = "address";
                            field[2] = "contact";
                            field[3] = "prod_name";
                            field[4] = "expected_date";
                            field[5] = "note";
                            //Creating array for data
                            String[] data = new String[6];
                            data[0] = fullname;
                            data[1] = address;
                            data[2] = contact;
                            data[3] = productname;
                            data[4] = expectedDate;
                            data[5] = Note;

                            PutData putData = new PutData("http://192.168.0.138/PISP/mobile/reserve.php", "POST", field, data);
                            if (putData.startPut()) {
                                if (putData.onComplete()) {
                                    progressBar.setVisibility(View.GONE);
                                    String result = putData.getResult();
                                    if (result.equals("Reserved Success")) {
                                        Toast.makeText(getApplicationContext(),result,Toast.LENGTH_SHORT).show();
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
                }
                else {
                    Toast.makeText(getApplicationContext(), "All Fields are REQUIRED!", Toast.LENGTH_SHORT).show();
                }

            }
        });

    }

}