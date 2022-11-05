package com.pubmatic.sdk.common;
/* loaded from: classes3.dex */
public class AdResponse {
    private String errorCode;
    private String errorMessage;
    private Exception exception;
    private Renderable mRenderable;
    private AdRequest mRequest;
    private int mStatusCode;

    /* loaded from: classes3.dex */
    public interface Renderable {
        Object getRenderable();
    }

    public AdRequest getRequest() {
        return this.mRequest;
    }

    public void setRequest(AdRequest adRequest) {
        this.mRequest = adRequest;
    }

    public int getStatusCode() {
        return this.mStatusCode;
    }

    public void setStatusCode(int i) {
        this.mStatusCode = i;
    }

    public Renderable getRenderable() {
        return this.mRenderable;
    }

    public void setRenderable(Renderable renderable) {
        this.mRenderable = renderable;
    }

    public String getErrorCode() {
        return this.errorCode;
    }

    public void setErrorCode(String str) {
        this.errorCode = str;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public void setErrorMessage(String str) {
        this.errorMessage = str;
    }

    public Exception getException() {
        return this.exception;
    }

    public void setException(Exception exc) {
        this.exception = exc;
    }
}
