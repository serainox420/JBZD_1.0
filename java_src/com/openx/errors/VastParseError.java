package com.openx.errors;
/* loaded from: classes3.dex */
public class VastParseError extends AdError {
    private static final long serialVersionUID = 1576307729847419749L;

    public VastParseError(String str) {
        super.setMessage("VastParse error :" + str);
    }
}
