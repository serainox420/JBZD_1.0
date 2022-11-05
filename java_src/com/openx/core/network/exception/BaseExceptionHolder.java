package com.openx.core.network.exception;
/* loaded from: classes3.dex */
public class BaseExceptionHolder extends BaseExceptionProvider {
    private Exception mException;

    public BaseExceptionHolder() {
    }

    public BaseExceptionHolder(Exception exc) {
        this.mException = exc;
    }

    public void setException(Exception exc) {
        this.mException = exc;
    }

    @Override // com.openx.core.network.exception.BaseExceptionProvider
    public Exception getException() {
        return this.mException;
    }
}
