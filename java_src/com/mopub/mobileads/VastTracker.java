package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import java.io.Serializable;
/* loaded from: classes3.dex */
public class VastTracker implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    protected final String f4473a;
    private boolean b;
    private boolean c;

    public VastTracker(String str) {
        Preconditions.checkNotNull(str);
        this.f4473a = str;
    }

    public VastTracker(String str, boolean z) {
        this(str);
        this.c = z;
    }

    public String getTrackingUrl() {
        return this.f4473a;
    }

    public void setTracked() {
        this.b = true;
    }

    public boolean isTracked() {
        return this.b;
    }

    public boolean isRepeatable() {
        return this.c;
    }
}
