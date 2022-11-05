package com.mobsandgeeks.saripaar.adapter;

import android.widget.TextView;
/* loaded from: classes3.dex */
public class TextViewStringAdapter implements ViewDataAdapter<TextView, String> {
    @Override // com.mobsandgeeks.saripaar.adapter.ViewDataAdapter
    public String getData(TextView textView) {
        return textView.getText().toString();
    }
}
