package com.apprupt.sdk;

import com.apprupt.sdk.CvSDK;
import com.apprupt.sdk.mediation.ValueExchangeCompletion;
/* loaded from: classes.dex */
public class CvContentOptions {

    /* renamed from: a  reason: collision with root package name */
    public final String f1778a;
    public final String b;
    public final String c;
    public final boolean d;
    public final boolean e;
    public final ValueExchangeCompletion f;
    public final boolean g;
    public final boolean h;
    public CvSDK.CvInterstitialListener i;

    public CvContentOptions(int i, String str, String str2, boolean z, boolean z2, boolean z3) {
        this(String.valueOf(i), str, str2, z, z2, z3);
    }

    public CvContentOptions(String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
        this(str, str2, str3, z, z2, z3, null);
    }

    public CvContentOptions(String str, String str2, String str3, boolean z, boolean z2, boolean z3, ValueExchangeCompletion valueExchangeCompletion) {
        this.i = null;
        this.f1778a = str;
        this.b = str3 == null ? "" : str3;
        this.c = str2 == null ? "" : str2;
        this.d = z;
        this.e = z2;
        this.g = valueExchangeCompletion != null;
        this.f = valueExchangeCompletion;
        this.h = z3;
    }
}
