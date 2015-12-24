package com.ashvale.nukdemo2;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    public TextView mytextview;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mytextview = (TextView)findViewById(R.id.myLabel);
        Button mybutton = (Button)findViewById(R.id.myButton);
        mytextview.setText("Happy Christmas!!!!!");

        mybutton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                doSomething();
            }
        });


    }

    public void doSomething() {
        mytextview.setText("Happy New Year!!!!!");
        Intent intent = new Intent(this, SecondActivity.class);
        intent.putExtra("message", "happy Chinese new year!!!!!");
        startActivity(intent);
    }

}
