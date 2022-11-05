package com.flurry.sdk;

import com.adcolony.sdk.AdColonyUserMetadata;
import com.google.android.gms.drive.DriveStatusCodes;
import com.google.android.gms.location.places.Place;
/* loaded from: classes2.dex */
public class mh {

    /* renamed from: a  reason: collision with root package name */
    public mj f3060a;
    private static final String s = mh.class.getName();
    private static mh t = null;
    public static int b = 0;
    public static int c = 1;
    public static int d = 2;
    public static int e = 3;
    public static int f = 4;
    public static int g = 0;
    public static int h = 100;
    public static int i = 101;
    public static int j = 102;
    public static int k = 1001;
    public static int l = 1003;
    public static int m = 1007;
    public static int n = 1207;
    public static int o = Place.TYPE_LOCALITY;
    public static int p = DriveStatusCodes.DRIVE_RATE_LIMIT_EXCEEDED;
    public static int q = 1703;
    public static int r = 1030011;

    public static int a(String str) {
        if (AdColonyUserMetadata.USER_SINGLE.equals(str)) {
            return c;
        }
        if ("carousel".equals(str)) {
            return d;
        }
        if ("rotator".equals(str) || "rotater".equals(str)) {
            return e;
        }
        if ("fullpage".equals(str)) {
            return f;
        }
        return b;
    }

    public static int a() {
        return g;
    }

    private mh() {
    }

    public static mh b() {
        if (t == null) {
            t = new mh();
        }
        return t;
    }
}
