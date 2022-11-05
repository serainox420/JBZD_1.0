package com.openx.errors;
/* loaded from: classes3.dex */
public class PermissionDeniedForApplication extends AdError {
    private static final long serialVersionUID = -3471915029151828378L;

    public PermissionDeniedForApplication(String str) {
        super.setMessage("Permission " + str + " denied. Please include this permission in your manifest file.");
    }
}
