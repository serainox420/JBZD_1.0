package com.mobsandgeeks.saripaar.adapter;

import android.widget.Spinner;
/* loaded from: classes3.dex */
public class SpinnerIndexAdapter implements ViewDataAdapter<Spinner, Integer> {
    @Override // com.mobsandgeeks.saripaar.adapter.ViewDataAdapter
    public Integer getData(Spinner spinner) {
        return Integer.valueOf(spinner.getSelectedItemPosition());
    }
}
