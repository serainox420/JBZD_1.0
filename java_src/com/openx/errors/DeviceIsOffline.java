package com.openx.errors;
/* loaded from: classes3.dex */
public class DeviceIsOffline extends AdError {
    private static final long serialVersionUID = -2321954806108588543L;

    public DeviceIsOffline() {
        super.setMessage("Device is currently offline. Please check connection.");
    }
}
