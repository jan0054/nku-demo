package com.ashvale.nuk_demo1;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

public class SecondActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
        TextView messageLabel = (TextView)findViewById(R.id.messagelabel);
        String message = this.getIntent().getExtras().getString("message");
        messageLabel.setText(message);
    }
}
