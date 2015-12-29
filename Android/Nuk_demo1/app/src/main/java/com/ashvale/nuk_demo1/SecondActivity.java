package com.ashvale.nuk_demo1;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

public class SecondActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
        TextView messageLabel = (TextView)findViewById(R.id.messagelabel);     //這邊就不贅述, 設定一個標籤等下要用

        String message = this.getIntent().getExtras().getString("message");    //拿到送我們過來的那個Intent, 將他的extra取出, 找到那個名稱為message的訊息
        messageLabel.setText(message);                                         //把訊息內容塞進上面的標籤裡面 (執行後畫面會看到happy new year!!!!!)
    }
}
