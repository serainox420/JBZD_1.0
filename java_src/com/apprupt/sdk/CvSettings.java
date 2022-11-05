package com.apprupt.sdk;
/* loaded from: classes.dex */
public class CvSettings {

    /* renamed from: a  reason: collision with root package name */
    private static final CvSettings f1885a = new CvSettings(true);
    private final boolean b;
    private String c;
    private String d;
    private CvAnimationType e;

    public CvSettings() {
        this(false);
    }

    private CvSettings(boolean z) {
        this.c = null;
        this.d = null;
        this.e = CvAnimationType.DEFAULT;
        this.b = false;
    }
}
