package com.mobsandgeeks.saripaar.adapter;

import android.widget.RadioButton;
/* loaded from: classes3.dex */
public class RadioButtonBooleanAdapter implements ViewDataAdapter<RadioButton, Boolean> {
    @Override // com.mobsandgeeks.saripaar.adapter.ViewDataAdapter
    public Boolean getData(RadioButton radioButton) {
        return Boolean.valueOf(radioButton.isChecked());
    }
}
