package com.google.android.exoplayer2.text.e;

import android.text.SpannableStringBuilder;
import com.google.android.exoplayer2.util.v;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* compiled from: WebvttSubtitle.java */
/* loaded from: classes2.dex */
final class i implements com.google.android.exoplayer2.text.e {

    /* renamed from: a  reason: collision with root package name */
    private final List<e> f3455a;
    private final int b;
    private final long[] c;
    private final long[] d;

    public i(List<e> list) {
        this.f3455a = list;
        this.b = list.size();
        this.c = new long[this.b * 2];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.b) {
                e eVar = list.get(i2);
                int i3 = i2 * 2;
                this.c[i3] = eVar.l;
                this.c[i3 + 1] = eVar.m;
                i = i2 + 1;
            } else {
                this.d = Arrays.copyOf(this.c, this.c.length);
                Arrays.sort(this.d);
                return;
            }
        }
    }

    @Override // com.google.android.exoplayer2.text.e
    public int a(long j) {
        int b = v.b(this.d, j, false, false);
        if (b < this.d.length) {
            return b;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.text.e
    public int b() {
        return this.d.length;
    }

    @Override // com.google.android.exoplayer2.text.e
    public long a(int i) {
        boolean z = true;
        com.google.android.exoplayer2.util.a.a(i >= 0);
        if (i >= this.d.length) {
            z = false;
        }
        com.google.android.exoplayer2.util.a.a(z);
        return this.d[i];
    }

    @Override // com.google.android.exoplayer2.text.e
    public List<com.google.android.exoplayer2.text.b> b(long j) {
        e eVar;
        ArrayList arrayList;
        SpannableStringBuilder spannableStringBuilder;
        SpannableStringBuilder spannableStringBuilder2 = null;
        int i = 0;
        e eVar2 = null;
        ArrayList arrayList2 = null;
        while (i < this.b) {
            if (this.c[i * 2] > j || j >= this.c[(i * 2) + 1]) {
                SpannableStringBuilder spannableStringBuilder3 = spannableStringBuilder2;
                eVar = eVar2;
                arrayList = arrayList2;
                spannableStringBuilder = spannableStringBuilder3;
            } else {
                ArrayList arrayList3 = arrayList2 == null ? new ArrayList() : arrayList2;
                e eVar3 = this.f3455a.get(i);
                if (eVar3.a()) {
                    if (eVar2 == null) {
                        arrayList = arrayList3;
                        spannableStringBuilder = spannableStringBuilder2;
                        eVar = eVar3;
                    } else if (spannableStringBuilder2 == null) {
                        SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder();
                        spannableStringBuilder4.append(eVar2.f3432a).append((CharSequence) "\n").append(eVar3.f3432a);
                        spannableStringBuilder = spannableStringBuilder4;
                        eVar = eVar2;
                        arrayList = arrayList3;
                    } else {
                        spannableStringBuilder2.append((CharSequence) "\n").append(eVar3.f3432a);
                        spannableStringBuilder = spannableStringBuilder2;
                        eVar = eVar2;
                        arrayList = arrayList3;
                    }
                } else {
                    arrayList3.add(eVar3);
                    spannableStringBuilder = spannableStringBuilder2;
                    eVar = eVar2;
                    arrayList = arrayList3;
                }
            }
            i++;
            SpannableStringBuilder spannableStringBuilder5 = spannableStringBuilder;
            arrayList2 = arrayList;
            eVar2 = eVar;
            spannableStringBuilder2 = spannableStringBuilder5;
        }
        if (spannableStringBuilder2 != null) {
            arrayList2.add(new e(spannableStringBuilder2));
        } else if (eVar2 != null) {
            arrayList2.add(eVar2);
        }
        return arrayList2 != null ? arrayList2 : Collections.emptyList();
    }
}
