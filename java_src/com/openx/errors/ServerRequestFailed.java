package com.openx.errors;
/* loaded from: classes3.dex */
public class ServerRequestFailed extends AdError {
    private static final long serialVersionUID = 1;

    public ServerRequestFailed(String str) {
        super.setMessage("Could not send request to server: " + str);
    }
}
