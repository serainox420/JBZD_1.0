package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.Arrays;
/* compiled from: FieldDescriptor.java */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private long[] f5795a;
    private RealmFieldType b;
    private String c;
    private boolean d;

    public e(Table table, String str, boolean z, boolean z2) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Non-empty field name must be provided");
        }
        if (str.startsWith(".") || str.endsWith(".")) {
            throw new IllegalArgumentException("Illegal field name. It cannot start or end with a '.': " + str);
        }
        if (str.contains(".")) {
            String[] split = str.split("\\.");
            long[] jArr = new long[split.length];
            for (int i = 0; i < split.length - 1; i++) {
                long a2 = table.a(split[i]);
                if (a2 == -1) {
                    throw new IllegalArgumentException(String.format("Invalid field name: '%s' does not refer to a class.", split[i]));
                }
                RealmFieldType c = table.c(a2);
                if (!z && c == RealmFieldType.OBJECT) {
                    throw new IllegalArgumentException(String.format("'RealmObject' field '%s' is not a supported link field here.", split[i]));
                }
                if (!z2 && c == RealmFieldType.LIST) {
                    throw new IllegalArgumentException(String.format("'RealmList' field '%s' is not a supported link field here.", split[i]));
                }
                if (c == RealmFieldType.OBJECT || c == RealmFieldType.LIST) {
                    table = table.e(a2);
                    jArr[i] = a2;
                } else {
                    throw new IllegalArgumentException(String.format("Invalid field name: '%s' does not refer to a class.", split[i]));
                }
            }
            String str2 = split[split.length - 1];
            long a3 = table.a(str2);
            jArr[split.length - 1] = a3;
            if (a3 == -1) {
                throw new IllegalArgumentException(String.format("'%s' is not a field name in class '%s'.", str2, table.h()));
            }
            this.b = table.c(a3);
            this.c = str2;
            this.f5795a = jArr;
            this.d = table.j(a3);
            return;
        }
        long a4 = table.a(str);
        if (a4 == -1) {
            throw new IllegalArgumentException(String.format("Field '%s' does not exist.", str));
        }
        this.b = table.c(a4);
        this.c = str;
        this.f5795a = new long[]{a4};
        this.d = table.j(a4);
    }

    public long[] a() {
        return Arrays.copyOf(this.f5795a, this.f5795a.length);
    }

    public RealmFieldType b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }
}
