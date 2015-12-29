package com.ashvale.nukdemo2;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

public class SecondActivity extends AppCompatActivity {
    public String message;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);

        message = this.getIntent().getExtras().getString("message");

        TextView secondlabel = (TextView)findViewById(R.id.mysecondlabel);
        secondlabel.setText(message);
    }
}
