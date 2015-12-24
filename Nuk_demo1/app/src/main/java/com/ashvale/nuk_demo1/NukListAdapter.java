package com.ashvale.nuk_demo1;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by huangyueh-yi on 12/23/15.
 */
public class NukListAdapter extends BaseAdapter {
    public List<String> nukList;
    public Context context;

    public NukListAdapter(List<String> nukList, Context context) {
        this.nukList = nukList;
        this.context = context;
    }

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

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        View view = convertView;
        if (view == null)
        {
            LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            view = inflater.inflate(R.layout.listitem_nuk, null);
        }

        TextView label1 = (TextView) view.findViewById(R.id.label1);
        TextView label2 = (TextView) view.findViewById(R.id.label2);

        String label1txt = String.valueOf(position);
        label1.setText(label1txt);
        label2.setText(nukList.get(position));
        return view;
    }
}
