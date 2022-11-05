package com.google.android.exoplayer2.extractor;

import java.util.ArrayList;
import java.util.List;
/* compiled from: DefaultExtractorsFactory.java */
/* loaded from: classes2.dex */
public final class c implements i {

    /* renamed from: a  reason: collision with root package name */
    private static List<Class<? extends f>> f3214a;

    public c() {
        synchronized (c.class) {
            if (f3214a == null) {
                ArrayList arrayList = new ArrayList();
                try {
                    arrayList.add(Class.forName("com.google.android.exoplayer2.extractor.a.d").asSubclass(f.class));
                } catch (ClassNotFoundException e) {
                }
                try {
                    arrayList.add(Class.forName("com.google.android.exoplayer2.extractor.c.e").asSubclass(f.class));
                } catch (ClassNotFoundException e2) {
                }
                try {
                    arrayList.add(Class.forName("com.google.android.exoplayer2.extractor.c.g").asSubclass(f.class));
                } catch (ClassNotFoundException e3) {
                }
                try {
                    arrayList.add(Class.forName("com.google.android.exoplayer2.extractor.b.b").asSubclass(f.class));
                } catch (ClassNotFoundException e4) {
                }
                try {
                    arrayList.add(Class.forName("com.google.android.exoplayer2.extractor.f.c").asSubclass(f.class));
                } catch (ClassNotFoundException e5) {
                }
                try {
                    arrayList.add(Class.forName("com.google.android.exoplayer2.extractor.f.a").asSubclass(f.class));
                } catch (ClassNotFoundException e6) {
                }
                try {
                    arrayList.add(Class.forName("com.google.android.exoplayer2.extractor.f.t").asSubclass(f.class));
                } catch (ClassNotFoundException e7) {
                }
                try {
                    arrayList.add(Class.forName("com.google.android.exoplayer2.extractor.flv.b").asSubclass(f.class));
                } catch (ClassNotFoundException e8) {
                }
                try {
                    arrayList.add(Class.forName("com.google.android.exoplayer2.extractor.d.c").asSubclass(f.class));
                } catch (ClassNotFoundException e9) {
                }
                try {
                    arrayList.add(Class.forName("com.google.android.exoplayer2.extractor.f.o").asSubclass(f.class));
                } catch (ClassNotFoundException e10) {
                }
                try {
                    arrayList.add(Class.forName("com.google.android.exoplayer2.extractor.g.a").asSubclass(f.class));
                } catch (ClassNotFoundException e11) {
                }
                try {
                    arrayList.add(Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(f.class));
                } catch (ClassNotFoundException e12) {
                }
                f3214a = arrayList;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.i
    public f[] a() {
        int i = 0;
        f[] fVarArr = new f[f3214a.size()];
        while (true) {
            int i2 = i;
            if (i2 < fVarArr.length) {
                try {
                    fVarArr[i2] = f3214a.get(i2).getConstructor(new Class[0]).newInstance(new Object[0]);
                    i = i2 + 1;
                } catch (Exception e) {
                    throw new IllegalStateException("Unexpected error creating default extractor", e);
                }
            } else {
                return fVarArr;
            }
        }
    }
}
