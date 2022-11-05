package com.google.android.exoplayer2.drm;
/* loaded from: classes2.dex */
public class DecryptionException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private final int f3197a;

    public DecryptionException(int i, String str) {
        super(str);
        this.f3197a = i;
    }

    public int getErrorCode() {
        return this.f3197a;
    }
}
