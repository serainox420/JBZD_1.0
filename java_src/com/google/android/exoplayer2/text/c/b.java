package com.google.android.exoplayer2.text.c;

import android.text.SpannableStringBuilder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
/* compiled from: TtmlNode.java */
/* loaded from: classes2.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    public final String f3438a;
    public final String b;
    public final boolean c;
    public final long d;
    public final long e;
    public final e f;
    public final String g;
    private final String[] h;
    private final HashMap<String, Integer> i;
    private final HashMap<String, Integer> j;
    private List<b> k;

    public static b a(String str) {
        return new b(null, d.a(str), -9223372036854775807L, -9223372036854775807L, null, null, "");
    }

    public static b a(String str, long j, long j2, e eVar, String[] strArr, String str2) {
        return new b(str, null, j, j2, eVar, strArr, str2);
    }

    private b(String str, String str2, long j, long j2, e eVar, String[] strArr, String str3) {
        this.f3438a = str;
        this.b = str2;
        this.f = eVar;
        this.h = strArr;
        this.c = str2 != null;
        this.d = j;
        this.e = j2;
        this.g = (String) com.google.android.exoplayer2.util.a.a(str3);
        this.i = new HashMap<>();
        this.j = new HashMap<>();
    }

    public boolean a(long j) {
        return (this.d == -9223372036854775807L && this.e == -9223372036854775807L) || (this.d <= j && this.e == -9223372036854775807L) || ((this.d == -9223372036854775807L && j < this.e) || (this.d <= j && j < this.e));
    }

    public void a(b bVar) {
        if (this.k == null) {
            this.k = new ArrayList();
        }
        this.k.add(bVar);
    }

    public b a(int i) {
        if (this.k == null) {
            throw new IndexOutOfBoundsException();
        }
        return this.k.get(i);
    }

    public int a() {
        if (this.k == null) {
            return 0;
        }
        return this.k.size();
    }

    public long[] b() {
        int i = 0;
        TreeSet<Long> treeSet = new TreeSet<>();
        a(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it = treeSet.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = i2 + 1;
                jArr[i2] = it.next().longValue();
            } else {
                return jArr;
            }
        }
    }

    private void a(TreeSet<Long> treeSet, boolean z) {
        boolean equals = "p".equals(this.f3438a);
        if (z || equals) {
            if (this.d != -9223372036854775807L) {
                treeSet.add(Long.valueOf(this.d));
            }
            if (this.e != -9223372036854775807L) {
                treeSet.add(Long.valueOf(this.e));
            }
        }
        if (this.k != null) {
            for (int i = 0; i < this.k.size(); i++) {
                this.k.get(i).a(treeSet, z || equals);
            }
        }
    }

    public List<com.google.android.exoplayer2.text.b> a(long j, Map<String, e> map, Map<String, c> map2) {
        TreeMap treeMap = new TreeMap();
        a(j, false, this.g, (Map<String, SpannableStringBuilder>) treeMap);
        a(map, treeMap);
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : treeMap.entrySet()) {
            c cVar = map2.get(entry.getKey());
            arrayList.add(new com.google.android.exoplayer2.text.b(a((SpannableStringBuilder) entry.getValue()), null, cVar.b, cVar.c, Integer.MIN_VALUE, cVar.f3439a, Integer.MIN_VALUE, cVar.d));
        }
        return arrayList;
    }

    private void a(long j, boolean z, String str, Map<String, SpannableStringBuilder> map) {
        this.i.clear();
        this.j.clear();
        String str2 = this.g;
        if ("".equals(str2)) {
            str2 = str;
        }
        if (this.c && z) {
            a(str2, map).append((CharSequence) this.b);
        } else if ("br".equals(this.f3438a) && z) {
            a(str2, map).append('\n');
        } else if (!"metadata".equals(this.f3438a) && a(j)) {
            boolean equals = "p".equals(this.f3438a);
            for (Map.Entry<String, SpannableStringBuilder> entry : map.entrySet()) {
                this.i.put(entry.getKey(), Integer.valueOf(entry.getValue().length()));
            }
            for (int i = 0; i < a(); i++) {
                a(i).a(j, z || equals, str2, map);
            }
            if (equals) {
                d.a(a(str2, map));
            }
            for (Map.Entry<String, SpannableStringBuilder> entry2 : map.entrySet()) {
                this.j.put(entry2.getKey(), Integer.valueOf(entry2.getValue().length()));
            }
        }
    }

    private static SpannableStringBuilder a(String str, Map<String, SpannableStringBuilder> map) {
        if (!map.containsKey(str)) {
            map.put(str, new SpannableStringBuilder());
        }
        return map.get(str);
    }

    private void a(Map<String, e> map, Map<String, SpannableStringBuilder> map2) {
        for (Map.Entry<String, Integer> entry : this.j.entrySet()) {
            String key = entry.getKey();
            a(map, map2.get(key), this.i.containsKey(key) ? this.i.get(key).intValue() : 0, entry.getValue().intValue());
            for (int i = 0; i < a(); i++) {
                a(i).a(map, map2);
            }
        }
    }

    private void a(Map<String, e> map, SpannableStringBuilder spannableStringBuilder, int i, int i2) {
        e a2;
        if (i != i2 && (a2 = d.a(this.f, this.h, map)) != null) {
            d.a(spannableStringBuilder, i, i2, a2);
        }
    }

    private SpannableStringBuilder a(SpannableStringBuilder spannableStringBuilder) {
        int i;
        int length = spannableStringBuilder.length();
        int i2 = 0;
        while (i2 < length) {
            if (spannableStringBuilder.charAt(i2) == ' ') {
                int i3 = i2 + 1;
                while (i3 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i3) == ' ') {
                    i3++;
                }
                int i4 = i3 - (i2 + 1);
                if (i4 > 0) {
                    spannableStringBuilder.delete(i2, i2 + i4);
                    i = length - i4;
                    i2++;
                    length = i;
                }
            }
            i = length;
            i2++;
            length = i;
        }
        if (length > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
            length--;
        }
        int i5 = length;
        for (int i6 = 0; i6 < i5 - 1; i6++) {
            if (spannableStringBuilder.charAt(i6) == '\n' && spannableStringBuilder.charAt(i6 + 1) == ' ') {
                spannableStringBuilder.delete(i6 + 1, i6 + 2);
                i5--;
            }
        }
        if (i5 > 0 && spannableStringBuilder.charAt(i5 - 1) == ' ') {
            spannableStringBuilder.delete(i5 - 1, i5);
            i5--;
        }
        for (int i7 = 0; i7 < i5 - 1; i7++) {
            if (spannableStringBuilder.charAt(i7) == ' ' && spannableStringBuilder.charAt(i7 + 1) == '\n') {
                spannableStringBuilder.delete(i7, i7 + 1);
                i5--;
            }
        }
        if (i5 > 0 && spannableStringBuilder.charAt(i5 - 1) == '\n') {
            spannableStringBuilder.delete(i5 - 1, i5);
        }
        return spannableStringBuilder;
    }
}
