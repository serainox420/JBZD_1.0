package com.google.android.gms.internal;

import android.util.Log;
import android.util.SparseArray;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes2.dex */
public class zzaaa extends zzaae {
    private final SparseArray<zza> zzazN;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza implements GoogleApiClient.OnConnectionFailedListener {
        public final int zzazO;
        public final GoogleApiClient zzazP;
        public final GoogleApiClient.OnConnectionFailedListener zzazQ;

        public zza(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            this.zzazO = i;
            this.zzazP = googleApiClient;
            this.zzazQ = onConnectionFailedListener;
            googleApiClient.registerConnectionFailedListener(this);
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.append((CharSequence) str).append("GoogleApiClient #").print(this.zzazO);
            printWriter.println(":");
            this.zzazP.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(ConnectionResult connectionResult) {
            String valueOf = String.valueOf(connectionResult);
            Log.d("AutoManageHelper", new StringBuilder(String.valueOf(valueOf).length() + 27).append("beginFailureResolution for ").append(valueOf).toString());
            zzaaa.this.zzb(connectionResult, this.zzazO);
        }

        public void zzvy() {
            this.zzazP.unregisterConnectionFailedListener(this);
            this.zzazP.disconnect();
        }
    }

    private zzaaa(zzabf zzabfVar) {
        super(zzabfVar);
        this.zzazN = new SparseArray<>();
        this.zzaCR.zza("AutoManageHelper", this);
    }

    public static zzaaa zza(zzabd zzabdVar) {
        zzabf zzc = zzc(zzabdVar);
        zzaaa zzaaaVar = (zzaaa) zzc.zza("AutoManageHelper", zzaaa.class);
        return zzaaaVar != null ? zzaaaVar : new zzaaa(zzc);
    }

    @Override // com.google.android.gms.internal.zzabe
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.zzazN.size()) {
                this.zzazN.valueAt(i2).dump(str, fileDescriptor, printWriter, strArr);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzaae, com.google.android.gms.internal.zzabe
    public void onStart() {
        super.onStart();
        boolean z = this.mStarted;
        String valueOf = String.valueOf(this.zzazN);
        Log.d("AutoManageHelper", new StringBuilder(String.valueOf(valueOf).length() + 14).append("onStart ").append(z).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(valueOf).toString());
        if (!this.zzazZ) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.zzazN.size()) {
                    return;
                }
                this.zzazN.valueAt(i2).zzazP.connect();
                i = i2 + 1;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzaae, com.google.android.gms.internal.zzabe
    public void onStop() {
        super.onStop();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.zzazN.size()) {
                this.zzazN.valueAt(i2).zzazP.disconnect();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void zza(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        com.google.android.gms.common.internal.zzac.zzb(googleApiClient, "GoogleApiClient instance cannot be null");
        com.google.android.gms.common.internal.zzac.zza(this.zzazN.indexOfKey(i) < 0, new StringBuilder(54).append("Already managing a GoogleApiClient with id ").append(i).toString());
        Log.d("AutoManageHelper", new StringBuilder(54).append("starting AutoManage for client ").append(i).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(this.mStarted).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(this.zzazZ).toString());
        this.zzazN.put(i, new zza(i, googleApiClient, onConnectionFailedListener));
        if (!this.mStarted || this.zzazZ) {
            return;
        }
        String valueOf = String.valueOf(googleApiClient);
        Log.d("AutoManageHelper", new StringBuilder(String.valueOf(valueOf).length() + 11).append("connecting ").append(valueOf).toString());
        googleApiClient.connect();
    }

    @Override // com.google.android.gms.internal.zzaae
    protected void zza(ConnectionResult connectionResult, int i) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        zza zzaVar = this.zzazN.get(i);
        if (zzaVar == null) {
            return;
        }
        zzcA(i);
        GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = zzaVar.zzazQ;
        if (onConnectionFailedListener == null) {
            return;
        }
        onConnectionFailedListener.onConnectionFailed(connectionResult);
    }

    public void zzcA(int i) {
        zza zzaVar = this.zzazN.get(i);
        this.zzazN.remove(i);
        if (zzaVar != null) {
            zzaVar.zzvy();
        }
    }

    @Override // com.google.android.gms.internal.zzaae
    protected void zzvx() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.zzazN.size()) {
                this.zzazN.valueAt(i2).zzazP.connect();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }
}
