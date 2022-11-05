package com.flurry.sdk;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Calendar;
/* loaded from: classes2.dex */
public final class fp {

    /* renamed from: a  reason: collision with root package name */
    private static String f2690a = null;
    private static float b = BitmapDescriptorFactory.HUE_RED;

    public static int a(Long l) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(l.longValue());
        return Calendar.getInstance().get(1) - calendar.get(1);
    }
}
