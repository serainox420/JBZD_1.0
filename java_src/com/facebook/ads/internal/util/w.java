package com.facebook.ads.internal.util;

import android.content.Context;
import com.facebook.ads.internal.util.aj;
/* loaded from: classes.dex */
public class w extends aj {

    /* renamed from: a  reason: collision with root package name */
    private final String f2254a;
    private final String b;

    public w(Context context, aj.a aVar, String str, String str2, String str3) {
        super(context, com.facebook.ads.internal.g.g.a(context), aVar, "", str3);
        this.f2254a = str;
        this.b = str2;
    }

    @Override // com.facebook.ads.internal.util.aj
    protected String a(aj.b bVar) {
        switch (bVar) {
            case MRC:
            default:
                return null;
            case PLAY:
                return this.b;
            case TIME:
                return this.f2254a;
        }
    }
}
