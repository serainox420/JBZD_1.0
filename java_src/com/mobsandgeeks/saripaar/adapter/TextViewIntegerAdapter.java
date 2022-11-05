package com.mobsandgeeks.saripaar.adapter;

import android.widget.TextView;
import com.mobsandgeeks.saripaar.exception.ConversionException;
/* loaded from: classes3.dex */
public class TextViewIntegerAdapter implements ViewDataAdapter<TextView, Integer> {
    private static final String REGEX_INTEGER = "\\d+";

    @Override // com.mobsandgeeks.saripaar.adapter.ViewDataAdapter
    public Integer getData(TextView textView) throws ConversionException {
        String trim = textView.getText().toString().trim();
        if (!trim.matches(REGEX_INTEGER)) {
            throw new ConversionException(String.format("Expected an integer, but was %s", trim));
        }
        return Integer.valueOf(Integer.parseInt(trim));
    }
}
