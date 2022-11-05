package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.util.v;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SimpleCacheSpan.java */
/* loaded from: classes2.dex */
public final class j extends e {
    private static final Pattern g = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);
    private static final Pattern h = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);
    private static final Pattern i = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);

    public static File a(File file, int i2, long j, long j2) {
        return new File(file, i2 + "." + j + "." + j2 + ".v3.exo");
    }

    public static j a(String str, long j) {
        return new j(str, j, -1L, -9223372036854775807L, null);
    }

    public static j b(String str, long j) {
        return new j(str, j, -1L, -9223372036854775807L, null);
    }

    public static j a(String str, long j, long j2) {
        return new j(str, j, j2, -9223372036854775807L, null);
    }

    public static j a(File file, g gVar) {
        File file2;
        String name = file.getName();
        if (!name.endsWith(".v3.exo")) {
            file2 = b(file, gVar);
            if (file2 == null) {
                return null;
            }
            name = file2.getName();
        } else {
            file2 = file;
        }
        Matcher matcher = i.matcher(name);
        if (matcher.matches()) {
            long length = file2.length();
            String a2 = gVar.a(Integer.parseInt(matcher.group(1)));
            return a2 == null ? null : new j(a2, Long.parseLong(matcher.group(2)), length, Long.parseLong(matcher.group(3)), file2);
        }
        return null;
    }

    private static File b(File file, g gVar) {
        String group;
        Matcher matcher;
        String name = file.getName();
        Matcher matcher2 = h.matcher(name);
        if (matcher2.matches()) {
            group = v.j(matcher2.group(1));
            if (group == null) {
                return null;
            }
            matcher = matcher2;
        } else {
            Matcher matcher3 = g.matcher(name);
            if (!matcher3.matches()) {
                return null;
            }
            group = matcher3.group(1);
            matcher = matcher3;
        }
        File a2 = a(file.getParentFile(), gVar.c(group), Long.parseLong(matcher.group(2)), Long.parseLong(matcher.group(3)));
        if (!file.renameTo(a2)) {
            return null;
        }
        return a2;
    }

    private j(String str, long j, long j2, long j3, File file) {
        super(str, j, j2, j3, file);
    }

    public j a(int i2) {
        com.google.android.exoplayer2.util.a.b(this.d);
        long currentTimeMillis = System.currentTimeMillis();
        return new j(this.f3482a, this.b, this.c, currentTimeMillis, a(this.e.getParentFile(), i2, this.b, currentTimeMillis));
    }
}
