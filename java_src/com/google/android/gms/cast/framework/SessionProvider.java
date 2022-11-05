package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.cast.framework.zzp;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public abstract class SessionProvider {
    private final String mCategory;
    private final zza zzaqJ = new zza();
    private final Context zzwi;

    /* loaded from: classes2.dex */
    private class zza extends zzp.zza {
        private zza() {
        }

        @Override // com.google.android.gms.cast.framework.zzp
        public String getCategory() {
            return SessionProvider.this.getCategory();
        }

        @Override // com.google.android.gms.cast.framework.zzp
        public boolean isSessionRecoverable() {
            return SessionProvider.this.isSessionRecoverable();
        }

        @Override // com.google.android.gms.cast.framework.zzp
        public IObjectWrapper zzcL(String str) {
            Session createSession = SessionProvider.this.createSession(str);
            if (createSession == null) {
                return null;
            }
            return createSession.zzsN();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SessionProvider(Context context, String str) {
        this.zzwi = ((Context) zzac.zzw(context)).getApplicationContext();
        this.mCategory = zzac.zzdr(str);
    }

    public abstract Session createSession(String str);

    public final String getCategory() {
        return this.mCategory;
    }

    public final Context getContext() {
        return this.zzwi;
    }

    public abstract boolean isSessionRecoverable();

    public IBinder zzsY() {
        return this.zzaqJ;
    }
}
