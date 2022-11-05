package com.smaato.soma.exception;

import com.smaato.soma.ErrorCode;
/* loaded from: classes3.dex */
public class ParserException extends Exception {
    public ErrorCode code;
    public String message;

    public ParserException(String str, ErrorCode errorCode) {
        this.message = "";
        this.code = ErrorCode.NO_ERROR;
        this.message = str;
        this.code = errorCode;
    }
}
