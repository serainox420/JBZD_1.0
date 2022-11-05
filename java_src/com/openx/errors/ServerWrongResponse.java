package com.openx.errors;
/* loaded from: classes3.dex */
public class ServerWrongResponse extends AdError {
    private static final long serialVersionUID = 1872034209394425891L;

    public ServerWrongResponse() {
        super.setMessage("Server response parsing error");
    }
}
