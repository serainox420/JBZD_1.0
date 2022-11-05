package com.loopme.common;
/* loaded from: classes2.dex */
public class LoopMeError {
    private String mErrorMessage;

    public LoopMeError(String str) {
        if (str != null && str.length() > 0) {
            this.mErrorMessage = str;
        } else {
            this.mErrorMessage = "Unknown error";
        }
    }

    public String getMessage() {
        return this.mErrorMessage;
    }
}
