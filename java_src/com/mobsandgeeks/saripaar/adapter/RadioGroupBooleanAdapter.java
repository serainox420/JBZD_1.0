package com.mobsandgeeks.saripaar.adapter;

import android.widget.RadioGroup;
import com.mobsandgeeks.saripaar.exception.ConversionException;
/* loaded from: classes3.dex */
public class RadioGroupBooleanAdapter implements ViewDataAdapter<RadioGroup, Boolean> {
    @Override // com.mobsandgeeks.saripaar.adapter.ViewDataAdapter
    public Boolean getData(RadioGroup radioGroup) throws ConversionException {
        return Boolean.valueOf(radioGroup.getCheckedRadioButtonId() != -1);
    }
}
