package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastMediaControlIntent;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionProvider;
/* loaded from: classes2.dex */
public class zzww extends SessionProvider {
    private final zzxe zzaqL;
    private final CastOptions zzaqa;

    public zzww(Context context, CastOptions castOptions, zzxe zzxeVar) {
        super(context, zza(castOptions));
        this.zzaqa = castOptions;
        this.zzaqL = zzxeVar;
    }

    private static String zza(CastOptions castOptions) {
        return castOptions.getSupportedNamespaces().isEmpty() ? CastMediaControlIntent.categoryForCast(castOptions.getReceiverApplicationId()) : CastMediaControlIntent.categoryForCast(castOptions.getReceiverApplicationId(), castOptions.getSupportedNamespaces());
    }

    @Override // com.google.android.gms.cast.framework.SessionProvider
    public Session createSession(String str) {
        return new CastSession(getContext(), getCategory(), str, this.zzaqa, Cast.CastApi, new zzwx(), new zzxj(getContext(), this.zzaqa, this.zzaqL));
    }

    @Override // com.google.android.gms.cast.framework.SessionProvider
    public boolean isSessionRecoverable() {
        return this.zzaqa.getResumeSavedSession();
    }
}
