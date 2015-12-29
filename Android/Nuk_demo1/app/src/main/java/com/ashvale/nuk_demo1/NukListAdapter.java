package com.ashvale.nuk_demo1;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

public class NukListAdapter extends BaseAdapter {

    //我們自己定義的這個介接adapter叫做NukListAdapter, 他有以下兩個變數:
    public List<String> nukList;    //陣列, 存放要帶入清單的內容
    public Context context;         //context, 簡單來說就是"呼叫這個介接adapter的人"

    //這個constructor功能是"當我們宣告一個新的NukListAdapter的時候, 要同時指定這兩個變數
    public NukListAdapter(List<String> nukList, Context context) {
        this.nukList = nukList;
        this.context = context;
    }

    //以下四個method (getCount, getItem, ...等), 是BaseAdapter必須要有的 (看回上面"NukListAdapter extends BaseAdapter", 我們的NukListAdapter其實是延伸系統內建的BaseAdapter)
    //我們這邊只會改動到第一個跟第四個

    //清單裡面會有幾個項目 = 回傳nukList陣列的大小就知道了!
    @Override
    public int getCount() {
        return nukList.size();
    }

    @Override
    public Object getItem(int position) {
        return null;
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    //清單每一個項目的畫面到底是什麼呢？這時候我們同時打開listitem_nuk.xml，看到裡面是一個簡單的橫向排列，共有兩個文字標籤label1跟label2。這個就是我們清單單一項目的樣式啦!
    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        View view = convertView;
        if (view == null)
        {
            LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            view = inflater.inflate(R.layout.listitem_nuk, null);
        }
        //上面有些不太清楚或直觀的東西請忽略, 要注要的就是我們把"view"和listitem_nuk.xml連接在一起了

        //這邊應該大家都知道了吧, 就是把xml裡面的標籤label1 label2和這邊程式的標籤變數連在一起
        TextView label1 = (TextView) view.findViewById(R.id.label1);
        TextView label2 = (TextView) view.findViewById(R.id.label2);

        //整數position是getView這個method帶有的變數，指的是目前這是清單的第幾個項目(從0開始喔, 記得!)
        String label1txt = String.valueOf(position);     //這邊把整數變數轉為字串
        label1.setText(label1txt);                       //把上一行的字串塞進第一個標籤
        label2.setText(nukList.get(position));           //把nuklist陣列的第n個位置的元素抓出來，塞進第二個標籤
        return view;                                     //大功告成!

        //這時候執行程式就看得到我們的清單共有四個項目啦~
    }
}
