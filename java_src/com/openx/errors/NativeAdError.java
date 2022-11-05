package com.openx.errors;
/* loaded from: classes3.dex */
public class NativeAdError extends AdError {
    private static final long serialVersionUID = 1;

    public NativeAdError(String str) {
        super.setMessage(str);
    }

    public NativeAdError() {
    }

    @Override // com.openx.errors.AdError
    public void setMessage(String str) {
        super.setMessage(str);
    }

    @Override // com.openx.errors.AdError, java.lang.Throwable
    public String getMessage() {
        return super.getMessage();
    }
}
