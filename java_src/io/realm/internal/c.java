package io.realm.internal;

import io.realm.exceptions.RealmMigrationNeededException;
import java.util.Map;
/* compiled from: ColumnInfo.java */
/* loaded from: classes3.dex */
public abstract class c implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Long> f5793a;

    public abstract void a(c cVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public final long a(String str, Table table, String str2, String str3) {
        long a2 = table.a(str3);
        if (a2 == -1) {
            throw new RealmMigrationNeededException(str, "Field '" + str3 + "' not found for type " + str2);
        }
        return a2;
    }

    public Map<String, Long> c() {
        return this.f5793a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(Map<String, Long> map) {
        this.f5793a = map;
    }

    @Override // 
    /* renamed from: b */
    public c clone() {
        try {
            return (c) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }
}
