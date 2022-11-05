package com.apprupt.sdk.mediation;

import android.content.Context;
import com.apprupt.sdk.CvViewHelper;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class Size {

    /* renamed from: a  reason: collision with root package name */
    public final int f1997a;
    public final int b;
    public final int c;

    /* loaded from: classes.dex */
    public class Computed {

        /* renamed from: a  reason: collision with root package name */
        public final int f1998a;
        public final int b;

        private Computed(int i, int i2) {
            this.f1998a = i;
            this.b = i2;
        }
    }

    public Size(int i, int i2, int i3) {
        this.f1997a = i;
        this.b = i2;
        this.c = i3;
    }

    public Size(int i, int i2) {
        this(1, i, i2);
    }

    public boolean a(int i) {
        return (this.f1997a & i) > 0;
    }

    private float a(Context context) {
        return context.getApplicationContext().getResources().getDisplayMetrics().densityDpi / 160.0f;
    }

    private float a(Context context, int i) {
        return a(context) * i;
    }

    private int b(Context context, int i) {
        return (int) a(context, i);
    }

    public Computed a(Context context, int i, int i2, boolean z) {
        int i3 = -1;
        ArrayList arrayList = new ArrayList();
        if (a(2)) {
            arrayList.add("wrap_width");
        }
        if (a(4)) {
            arrayList.add("fill_width");
        }
        if (a(8)) {
            arrayList.add("wrap_height");
        }
        if (a(16)) {
            arrayList.add("fill_height");
        }
        if (a(32)) {
            arrayList.add("keep_ratio");
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        String str = "";
        while (it.hasNext()) {
            sb.append(str);
            str = ",";
            sb.append((String) it.next());
        }
        if (a(32) && i > 0 && this.b > 0 && this.c > 0) {
            CvViewHelper.b(context);
            if (CvViewHelper.f1906a.x > 0) {
                i = Math.min(i, CvViewHelper.f1906a.x);
            }
            return new Computed(i, Math.round((a(context, this.c) / a(context, this.b)) * i));
        }
        int b = a(4) ? -1 : b(context, this.b);
        int i4 = this.c;
        if (!a(16) || !z) {
            if (a(16) && i2 > 0) {
                CvViewHelper.b(context);
                i3 = Math.min(Math.max(i2, b(context, this.c)), CvViewHelper.f1906a.y);
            } else {
                i3 = b(context, i4);
            }
        }
        return new Computed(b, i3);
    }
}
