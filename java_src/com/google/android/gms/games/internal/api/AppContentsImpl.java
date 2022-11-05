package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.appcontent.AppContents;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzaad;
/* loaded from: classes2.dex */
public final class AppContentsImpl implements AppContents {

    /* renamed from: com.google.android.gms.games.internal.api.AppContentsImpl$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass1 extends LoadsImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzaad.zzb<AppContents.LoadAppContentResult>) this, 0, (String) null, (String[]) null, false);
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class LoadsImpl extends Games.BaseGamesApiMethodImpl<AppContents.LoadAppContentResult> {
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzas */
        public AppContents.LoadAppContentResult zzc(final Status status) {
            return new AppContents.LoadAppContentResult(this) { // from class: com.google.android.gms.games.internal.api.AppContentsImpl.LoadsImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }

                @Override // com.google.android.gms.common.api.Releasable
                public void release() {
                }
            };
        }
    }
}
