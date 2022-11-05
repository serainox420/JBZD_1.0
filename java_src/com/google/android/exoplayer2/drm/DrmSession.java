package com.google.android.exoplayer2.drm;

import android.annotation.TargetApi;
import com.google.android.exoplayer2.drm.b;
@TargetApi(16)
/* loaded from: classes2.dex */
public interface DrmSession<T extends b> {
    int a();

    boolean a(String str);

    T b();

    DrmSessionException c();

    /* loaded from: classes2.dex */
    public static class DrmSessionException extends Exception {
        public DrmSessionException(Exception exc) {
            super(exc);
        }
    }
}
