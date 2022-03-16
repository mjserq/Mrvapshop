package com.example.mistervapeshop;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;
import java.util.List;

public class RecyclerAdapter extends RecyclerView.Adapter<RecyclerAdapter.MyViewHolder> {

    private Context mContext;
    private List<Product> products = new ArrayList<>();


    public RecyclerAdapter (Context context,List<Product> products){
        this.mContext = context;
        this.products = products;
    }


    public class MyViewHolder extends RecyclerView.ViewHolder {

        private TextView mProduct, mPrice;
        private TextView mCat, mQty;
        private LinearLayout mContainer;

        public MyViewHolder (View view){
            super(view);

            mProduct = view.findViewById(R.id.product_title);
            mCat = view.findViewById(R.id.product_cat);
            mPrice = view.findViewById(R.id.product_price);
            mQty = view.findViewById(R.id.product_qty);
            mContainer = view.findViewById(R.id.product_container);
        }
    }


    @NonNull
    @Override
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {

        View view = LayoutInflater.from(mContext).inflate(R.layout.products_list_item_layout,parent,false);
        return new MyViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull MyViewHolder holder, int position) {

        final Product product = products.get(position);

        holder.mPrice.setText("Php "+product.getPrice()+"0");
        holder.mCat.setText(product.getString());
        holder.mProduct.setText(product.getTitle());
        holder.mQty.setText("Stocks Left:  " + product.getQty());

       // holder.mContainer.setOnClickListener(new View.OnClickListener() {
           // @Override
           // public void onClick(View v) {
           //     Intent intent = new Intent(mContext,DetailedProductsActivity.class);

            //    intent.putExtra("product_name",product.getTitle());
           //     intent.putExtra("gen_name",product.getString());
           //     intent.putExtra("price",product.getPrice());
           //     intent.putExtra("qty",product.getQty());

           //     mContext.startActivity(intent);
          //  }
       // });

    }

    @Override
    public int getItemCount() {
        return products.size();
    }
}
