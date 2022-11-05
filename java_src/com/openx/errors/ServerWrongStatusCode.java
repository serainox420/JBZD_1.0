package com.openx.errors;
/* loaded from: classes3.dex */
public class ServerWrongStatusCode extends AdError {
    private static final long serialVersionUID = -4918332368118548336L;

    public ServerWrongStatusCode(int i) {
        super.setMessage("Server returned " + i + " status code");
    }
}
