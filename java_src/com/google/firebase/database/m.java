package com.google.firebase.database;

import com.google.android.gms.internal.zzbsc;
/* loaded from: classes2.dex */
public class m {

    /* loaded from: classes2.dex */
    public interface a {
        b a(i iVar);

        void a(c cVar, boolean z, com.google.firebase.database.b bVar);
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f3577a;
        private zzbsc b;

        private b(boolean z, zzbsc zzbscVar) {
            this.f3577a = z;
            this.b = zzbscVar;
        }

        public boolean a() {
            return this.f3577a;
        }

        public zzbsc b() {
            return this.b;
        }
    }

    public static b a() {
        return new b(false, null);
    }
}
