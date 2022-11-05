package com.facebook.ads.internal.e;

import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.android.gms.games.GamesStatusCodes;
/* loaded from: classes.dex */
abstract class f<T> {

    /* renamed from: a  reason: collision with root package name */
    private a f2138a;

    /* loaded from: classes.dex */
    public enum a {
        UNKNOWN(GamesStatusCodes.STATUS_VIDEO_NOT_ACTIVE, "An unknown error has occurred."),
        DATABASE_SELECT(3001, "Failed to read from database."),
        DATABASE_INSERT(3002, "Failed to insert row into database."),
        DATABASE_UPDATE(3003, "Failed to update row in database."),
        DATABASE_DELETE(AuthApiStatusCodes.AUTH_TOKEN_ERROR, "Failed to delete row from database.");
        
        private final int f;
        private final String g;

        a(int i, String str) {
            this.f = i;
            this.g = str;
        }

        public int a() {
            return this.f;
        }

        public String b() {
            return this.g;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(a aVar) {
        this.f2138a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T b();

    public a c() {
        return this.f2138a;
    }
}
