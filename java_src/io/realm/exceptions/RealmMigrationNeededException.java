package io.realm.exceptions;

import io.realm.internal.Keep;
@Keep
/* loaded from: classes3.dex */
public final class RealmMigrationNeededException extends RuntimeException {
    private final String canonicalRealmPath;

    public RealmMigrationNeededException(String str, String str2) {
        super(str2);
        this.canonicalRealmPath = str;
    }

    public RealmMigrationNeededException(String str, String str2, Throwable th) {
        super(str2, th);
        this.canonicalRealmPath = str;
    }

    public String getPath() {
        return this.canonicalRealmPath;
    }
}
