package com.amazon.device.ads;
/* loaded from: classes.dex */
public class AdError {
    private final ErrorCode code;
    private final String message;

    /* loaded from: classes.dex */
    public enum ErrorCode {
        NETWORK_ERROR,
        NETWORK_TIMEOUT,
        NO_FILL,
        INTERNAL_ERROR,
        REQUEST_ERROR
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdError(ErrorCode errorCode, String str) {
        this.code = errorCode;
        this.message = str;
    }

    public ErrorCode getCode() {
        return this.code;
    }

    public String getMessage() {
        return this.message;
    }
}
