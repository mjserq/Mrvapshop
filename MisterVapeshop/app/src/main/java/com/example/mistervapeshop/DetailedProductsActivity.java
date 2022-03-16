package com.example.mistervapeshop;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

public class DetailedProductsActivity extends AppCompatActivity {

    private Toolbar mToolbar;
    private ActionBar mActionBar;
    private TextView mTitle, mCat, mPrice , mQty;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detailed_products);

        mToolbar = findViewById(R.id.toolbar);
        mPrice = findViewById(R.id.price);
        mCat = findViewById(R.id.product_cat);
        mTitle = findViewById(R.id.name);
        mQty = findViewById(R.id.product_qty);

        // Setting up action bar
        setSupportActionBar(mToolbar);
        mActionBar = getSupportActionBar();
        mActionBar.setDisplayHomeAsUpEnabled(true);
        mActionBar.setHomeAsUpIndicator(getResources().getDrawable(R.drawable.ic_baseline_chevron_left_black_24dp));

        // Catching incoming intent
        Intent intent = getIntent();
        double price = intent.getDoubleExtra("price",0);
        String gen_name = intent.getStringExtra("gen_name");
        String product_name = intent.getStringExtra("product_name");
        String qty = intent.getStringExtra("qty");

        if (intent !=null){

            mActionBar.setTitle(product_name);
            mTitle.setText(product_name);
            mCat.setText(gen_name);
            mPrice.setText("Php "+ String.valueOf(price)+"0");
            mQty.setText(qty);
        }

    }
}
