package com.openx.errors;
/* loaded from: classes3.dex */
public class UnknownError extends AdError {
    private static final long serialVersionUID = 1576307729847419749L;

    public UnknownError(String str) {
        super.setMessage("Unknown Error with :" + str);
    }
}
