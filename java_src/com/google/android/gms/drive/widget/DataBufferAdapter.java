package com.google.android.gms.drive.widget;

import android.content.Context;
import android.database.CursorIndexOutOfBoundsException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.internal.zzaic;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class DataBufferAdapter<T> extends BaseAdapter {
    private final Context mContext;
    private final LayoutInflater mInflater;
    private final int zzaRv;
    private int zzaRw;
    private final int zzaRx;
    private final List<DataBuffer<T>> zzaRy;
    private boolean zzaRz;

    public DataBufferAdapter(Context context, int i) {
        this(context, i, 0, new ArrayList());
    }

    public DataBufferAdapter(Context context, int i, int i2) {
        this(context, i, i2, new ArrayList());
    }

    public DataBufferAdapter(Context context, int i, int i2, List<DataBuffer<T>> list) {
        this.zzaRz = true;
        this.mContext = context;
        this.zzaRw = i;
        this.zzaRv = i;
        this.zzaRx = i2;
        this.zzaRy = list;
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public DataBufferAdapter(Context context, int i, int i2, DataBuffer<T>... dataBufferArr) {
        this(context, i, i2, Arrays.asList(dataBufferArr));
    }

    public DataBufferAdapter(Context context, int i, List<DataBuffer<T>> list) {
        this(context, i, 0, list);
    }

    public DataBufferAdapter(Context context, int i, DataBuffer<T>... dataBufferArr) {
        this(context, i, 0, Arrays.asList(dataBufferArr));
    }

    private View zza(int i, View view, ViewGroup viewGroup, int i2) {
        View inflate = view == null ? this.mInflater.inflate(i2, viewGroup, false) : view;
        try {
            TextView textView = this.zzaRx == 0 ? (TextView) inflate : (TextView) inflate.findViewById(this.zzaRx);
            T item = getItem(i);
            if (item instanceof CharSequence) {
                textView.setText((CharSequence) item);
            } else {
                textView.setText(item.toString());
            }
            return inflate;
        } catch (ClassCastException e) {
            zzaic.zza("DataBufferAdapter", e, "You must supply a resource ID for a TextView");
            throw new IllegalStateException("DataBufferAdapter requires the resource ID to be a TextView", e);
        }
    }

    public void append(DataBuffer<T> dataBuffer) {
        this.zzaRy.add(dataBuffer);
        if (this.zzaRz) {
            notifyDataSetChanged();
        }
    }

    public void clear() {
        for (DataBuffer<T> dataBuffer : this.zzaRy) {
            dataBuffer.release();
        }
        this.zzaRy.clear();
        if (this.zzaRz) {
            notifyDataSetChanged();
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int i = 0;
        Iterator<DataBuffer<T>> it = this.zzaRy.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = it.next().getCount() + i2;
            } else {
                return i2;
            }
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        return zza(i, view, viewGroup, this.zzaRw);
    }

    @Override // android.widget.Adapter
    public T getItem(int i) throws CursorIndexOutOfBoundsException {
        int i2 = i;
        for (DataBuffer<T> dataBuffer : this.zzaRy) {
            int count = dataBuffer.getCount();
            if (count > i2) {
                try {
                    return dataBuffer.mo547get(i2);
                } catch (CursorIndexOutOfBoundsException e) {
                    throw new CursorIndexOutOfBoundsException(i, getCount());
                }
            }
            i2 -= count;
        }
        throw new CursorIndexOutOfBoundsException(i, getCount());
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return zza(i, view, viewGroup, this.zzaRv);
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        this.zzaRz = true;
    }

    public void setDropDownViewResource(int i) {
        this.zzaRw = i;
    }

    public void setNotifyOnChange(boolean z) {
        this.zzaRz = z;
    }
}
