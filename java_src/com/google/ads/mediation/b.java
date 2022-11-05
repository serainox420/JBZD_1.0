package com.google.ads.mediation;

import android.location.Location;
import com.google.ads.AdRequest;
import java.util.Date;
import java.util.Set;
@Deprecated
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final Date f3138a;
    private final AdRequest.Gender b;
    private final Set<String> c;
    private final boolean d;
    private final Location e;

    public b(Date date, AdRequest.Gender gender, Set<String> set, boolean z, Location location) {
        this.f3138a = date;
        this.b = gender;
        this.c = set;
        this.d = z;
        this.e = location;
    }
}
