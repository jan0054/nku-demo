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
    public TextView helloLabel;   //我們宣告一個標籤變數helloLabel

    //onCreate在這個畫面啟動時會被呼叫
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);                        //把這個Activity跟他的介面檔案activity_main.xml連在一起 (順便去activity_main.xml看看裡面有什麼吧!)
        helloLabel = (TextView)findViewById(R.id.label);               //把上面宣告的標籤跟activity_main.xml裡面id為label的標籤連在一起
        Button mainButton = (Button)findViewById(R.id.button);         //宣告一個叫做mainButton的按鈕, 並且跟activity_main裡面id為button的按鈕連在一起

        helloLabel.setText("hihihihihihi!!!!!");                       //用"setText"設定標籤的文字
        mainButton.setText("Button!!");                                //同上, 設定按鈕顯示的文字

        //在mainButton上面掛一個監聽點擊的程序
        mainButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //被點了, 執行下面的東西
                doSomething(null);
            }
        });

        //這部分是解說清單的功能, 請同時打開NukListAdapter.java跟res/layout/listitem_nuk.xml這兩個檔案

        List<String> nameList = Arrays.asList("Fin", "Rey", "Ben", "Poe");  //我們先簡單宣告一個陣列作為我們要放進清單的內容

        ListView mainList = (ListView)findViewById(R.id.listView);          //宣告一個清單(listview)變數, 並且把他跟activity_main.xml裡面id為listView的清單連在一起

        NukListAdapter adapter = new NukListAdapter(nameList, this);        //宣告一個新的介接器adapter, 並且把清單要放的內容給他(nameList)，以及是誰呼叫他的(this, 我們自己這個activity)
        mainList.setAdapter(adapter);                                       //告訴清單說, adapter就是你的介接介面啦, 需要內容的時候就去找他!
        //看到這邊, 請接著打開NukListAdapter.java
    }
    //這是一個我們自定的method, 按鈕被點的時候會呼叫他
    public void doSomething(View view) {
        Intent intent = new Intent(this, SecondActivity.class);   //宣告一個新的"Intent" (意圖), 這個Intent說"我們打算從這邊(this)到SecondActivity去
        intent.putExtra("message", "happy new year!!!!!");        //呈上, 要到SecondActivity去還要順便帶一個"extra", 這個額外的東西的名稱是"message", 內容是"happy new year!!!!!"
        startActivity(intent);                                    //設定好了之後, 出發!
    }

}
