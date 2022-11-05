package io.realm.internal;

import io.realm.RealmFieldType;
import io.realm.Sort;
import java.util.Arrays;
import java.util.List;
@KeepMember
/* loaded from: classes3.dex */
public class SortDescriptor {

    /* renamed from: a  reason: collision with root package name */
    static final List<RealmFieldType> f5780a = Arrays.asList(RealmFieldType.BOOLEAN, RealmFieldType.INTEGER, RealmFieldType.FLOAT, RealmFieldType.DOUBLE, RealmFieldType.STRING, RealmFieldType.DATE);
    static final List<RealmFieldType> b = Arrays.asList(RealmFieldType.BOOLEAN, RealmFieldType.INTEGER, RealmFieldType.STRING, RealmFieldType.DATE);
    private final long[][] c;
    private final boolean[] d;
    private final Table e;

    private SortDescriptor(Table table, long[][] jArr, Sort[] sortArr) {
        if (sortArr != null) {
            this.d = new boolean[sortArr.length];
            for (int i = 0; i < sortArr.length; i++) {
                this.d[i] = sortArr[i].getValue();
            }
        } else {
            this.d = null;
        }
        this.c = jArr;
        this.e = table;
    }

    public static SortDescriptor a(Table table, String str, Sort sort) {
        return a(table, new String[]{str}, new Sort[]{sort});
    }

    public static SortDescriptor a(Table table, String[] strArr, Sort[] sortArr) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("You must provide at least one field name.");
        }
        if (sortArr == null || sortArr.length == 0) {
            throw new IllegalArgumentException("You must provide at least one sort order.");
        }
        if (strArr.length != sortArr.length) {
            throw new IllegalArgumentException("Number of fields and sort orders do not match.");
        }
        long[][] jArr = new long[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            e eVar = new e(table, strArr[i], true, false);
            a(eVar, strArr[i]);
            jArr[i] = eVar.a();
        }
        return new SortDescriptor(table, jArr, sortArr);
    }

    private static void a(e eVar, String str) {
        if (!f5780a.contains(eVar.b())) {
            throw new IllegalArgumentException(String.format("Sort is not supported on '%s' field '%s' in '%s'.", eVar.toString(), eVar.c(), str));
        }
    }

    @KeepMember
    long[][] getColumnIndices() {
        return this.c;
    }

    @KeepMember
    boolean[] getAscendings() {
        return this.d;
    }

    @KeepMember
    private long getTablePtr() {
        return this.e.getNativePtr();
    }
}
