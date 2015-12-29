package com.ashvale.nuk_demo1;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;

import java.util.Arrays;
import java.util.List;

public class MainActivity extends AppCompatActivity {
    public TextView helloLabel;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        helloLabel = (TextView)findViewById(R.id.label);
        Button mainButton = (Button)findViewById(R.id.button);

        helloLabel.setText("hihihihihihi!!!!!");
        mainButton.setText("Button!!");
        mainButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                doSomething(null);
            }
        });

        ListView mainList = (ListView)findViewById(R.id.listView);
        List<String> nameList = Arrays.asList("Fin", "Rey", "Ben", "Poe");
        NukListAdapter adapter = new NukListAdapter(nameList, this);
        mainList.setAdapter(adapter);
    }

    public void doSomething(View view) {
        //helloLabel.setText("hohohohohohohoho!!!!!");
        Intent intent = new Intent(this, SecondActivity.class);
        intent.putExtra("message", "happy new year!!!!!");
        startActivity(intent);
    }

}
