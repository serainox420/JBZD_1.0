package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzaad;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public interface zzabc {

    /* loaded from: classes2.dex */
    public interface zza {
        void zzc(int i, boolean z);

        void zzc(ConnectionResult connectionResult);

        void zzo(Bundle bundle);
    }

    ConnectionResult blockingConnect();

    ConnectionResult blockingConnect(long j, TimeUnit timeUnit);

    void connect();

    void disconnect();

    void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    ConnectionResult getConnectionResult(Api<?> api);

    boolean isConnected();

    boolean isConnecting();

    <A extends Api.zzb, R extends Result, T extends zzaad.zza<R, A>> T zza(T t);

    boolean zza(zzabq zzabqVar);

    <A extends Api.zzb, T extends zzaad.zza<? extends Result, A>> T zzb(T t);

    void zzvM();

    void zzvn();
}
