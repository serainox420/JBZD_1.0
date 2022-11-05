package com.google.android.gms.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.internal.zzaaz;
/* loaded from: classes2.dex */
public abstract class zzaae extends zzabe implements DialogInterface.OnCancelListener {
    protected boolean mStarted;
    private ConnectionResult zzaAa;
    private int zzaAb;
    private final Handler zzaAc;
    protected boolean zzazZ;
    protected final GoogleApiAvailability zzazn;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza implements Runnable {
        private zza() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!zzaae.this.mStarted) {
                return;
            }
            if (zzaae.this.zzaAa.hasResolution()) {
                zzaae.this.zzaCR.startActivityForResult(GoogleApiActivity.zzb(zzaae.this.getActivity(), zzaae.this.zzaAa.getResolution(), zzaae.this.zzaAb, false), 1);
            } else if (zzaae.this.zzazn.isUserResolvableError(zzaae.this.zzaAa.getErrorCode())) {
                zzaae.this.zzazn.zza(zzaae.this.getActivity(), zzaae.this.zzaCR, zzaae.this.zzaAa.getErrorCode(), 2, zzaae.this);
            } else if (zzaae.this.zzaAa.getErrorCode() != 18) {
                zzaae.this.zza(zzaae.this.zzaAa, zzaae.this.zzaAb);
            } else {
                final Dialog zza = zzaae.this.zzazn.zza(zzaae.this.getActivity(), zzaae.this);
                zzaae.this.zzazn.zza(zzaae.this.getActivity().getApplicationContext(), new zzaaz.zza() { // from class: com.google.android.gms.internal.zzaae.zza.1
                    @Override // com.google.android.gms.internal.zzaaz.zza
                    public void zzvE() {
                        zzaae.this.zzvD();
                        if (zza.isShowing()) {
                            zza.dismiss();
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzaae(zzabf zzabfVar) {
        this(zzabfVar, GoogleApiAvailability.getInstance());
    }

    zzaae(zzabf zzabfVar, GoogleApiAvailability googleApiAvailability) {
        super(zzabfVar);
        this.zzaAb = -1;
        this.zzaAc = new Handler(Looper.getMainLooper());
        this.zzazn = googleApiAvailability;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.zzabe
    public void onActivityResult(int i, int i2, Intent intent) {
        boolean z = true;
        switch (i) {
            case 1:
                if (i2 != -1) {
                    if (i2 == 0) {
                        this.zzaAa = new ConnectionResult(intent != null ? intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13) : 13, null);
                    }
                    z = false;
                    break;
                }
                break;
            case 2:
                int isGooglePlayServicesAvailable = this.zzazn.isGooglePlayServicesAvailable(getActivity());
                if (isGooglePlayServicesAvailable != 0) {
                    z = false;
                }
                if (this.zzaAa.getErrorCode() == 18 && isGooglePlayServicesAvailable == 18) {
                    return;
                }
                break;
            default:
                z = false;
                break;
        }
        if (z) {
            zzvD();
        } else {
            zza(this.zzaAa, this.zzaAb);
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        zza(new ConnectionResult(13, null), this.zzaAb);
        zzvD();
    }

    @Override // com.google.android.gms.internal.zzabe
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.zzazZ = bundle.getBoolean("resolving_error", false);
            if (!this.zzazZ) {
                return;
            }
            this.zzaAb = bundle.getInt("failed_client_id", -1);
            this.zzaAa = new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution"));
        }
    }

    @Override // com.google.android.gms.internal.zzabe
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving_error", this.zzazZ);
        if (this.zzazZ) {
            bundle.putInt("failed_client_id", this.zzaAb);
            bundle.putInt("failed_status", this.zzaAa.getErrorCode());
            bundle.putParcelable("failed_resolution", this.zzaAa.getResolution());
        }
    }

    @Override // com.google.android.gms.internal.zzabe
    public void onStart() {
        super.onStart();
        this.mStarted = true;
    }

    @Override // com.google.android.gms.internal.zzabe
    public void onStop() {
        super.onStop();
        this.mStarted = false;
    }

    protected abstract void zza(ConnectionResult connectionResult, int i);

    public void zzb(ConnectionResult connectionResult, int i) {
        if (!this.zzazZ) {
            this.zzazZ = true;
            this.zzaAb = i;
            this.zzaAa = connectionResult;
            this.zzaAc.post(new zza());
        }
    }

    protected void zzvD() {
        this.zzaAb = -1;
        this.zzazZ = false;
        this.zzaAa = null;
        zzvx();
    }

    protected abstract void zzvx();
}
