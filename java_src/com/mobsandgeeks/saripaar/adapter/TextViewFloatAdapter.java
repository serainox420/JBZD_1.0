package com.mobsandgeeks.saripaar.adapter;

import android.widget.TextView;
import com.mobsandgeeks.saripaar.exception.ConversionException;
/* loaded from: classes3.dex */
public class TextViewFloatAdapter implements ViewDataAdapter<TextView, Float> {
    private static final String REGEX_DECIMAL = "[-+]?[0-9]*\\.?[0-9]+([eE][-+]?[0-9]+)?";

    @Override // com.mobsandgeeks.saripaar.adapter.ViewDataAdapter
    public Float getData(TextView textView) throws ConversionException {
        String trim = textView.getText().toString().trim();
        if (!trim.matches(REGEX_DECIMAL)) {
            throw new ConversionException(String.format("Expected a floating point number, but was %s", trim));
        }
        return Float.valueOf(Float.parseFloat(trim));
    }
}
