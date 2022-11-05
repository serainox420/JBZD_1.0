package com.mobsandgeeks.saripaar.adapter;

import android.widget.CheckBox;
/* loaded from: classes3.dex */
public class CheckBoxBooleanAdapter implements ViewDataAdapter<CheckBox, Boolean> {
    @Override // com.mobsandgeeks.saripaar.adapter.ViewDataAdapter
    public Boolean getData(CheckBox checkBox) {
        return Boolean.valueOf(checkBox.isChecked());
    }
}
