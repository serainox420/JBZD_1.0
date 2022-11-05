package com.google.android.gms.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.storage.StorageException;
import java.io.InputStream;
import java.net.SocketException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class zzbue {
    static final /* synthetic */ boolean $assertionsDisabled;
    private Exception zzbNH;
    private zzbub zzcoM;
    private int zzcoN;
    private Exception zzcoO;

    static {
        $assertionsDisabled = !zzbue.class.desiredAssertionStatus();
    }

    public zzbue(zzbub zzbubVar) {
        this.zzcoM = zzbubVar;
    }

    private boolean zzcB(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            this.zzcoN = -2;
            this.zzcoO = new SocketException("Network subsystem is unavailable");
            return false;
        }
        return true;
    }

    public Exception getException() {
        try {
            return this.zzcoO != null ? this.zzcoO : this.zzbNH != null ? this.zzbNH : (Exception) com.google.android.gms.dynamic.zzd.zzF(this.zzcoM.zzadb());
        } catch (RemoteException e) {
            this.zzbNH = e;
            Log.e("NetworkRequestProxy", "getException failed with a RemoteException:", e);
            return null;
        }
    }

    public int getResultCode() {
        try {
            return this.zzcoN != 0 ? this.zzcoN : this.zzcoM.getResultCode();
        } catch (RemoteException e) {
            this.zzbNH = e;
            Log.e("NetworkRequestProxy", "getResultCode failed with a RemoteException:", e);
            return 0;
        }
    }

    public InputStream getStream() {
        try {
            return (InputStream) com.google.android.gms.dynamic.zzd.zzF(this.zzcoM.zzacX());
        } catch (RemoteException e) {
            this.zzbNH = e;
            Log.e("NetworkRequestProxy", "getStream failed with a RemoteException:", e);
            return null;
        }
    }

    public void reset() {
        try {
            this.zzcoN = 0;
            this.zzcoO = null;
            this.zzcoM.reset();
        } catch (RemoteException e) {
            this.zzbNH = e;
            Log.e("NetworkRequestProxy", "reset failed with a RemoteException:", e);
        }
    }

    public <TResult> void zza(TaskCompletionSource<TResult> taskCompletionSource, TResult tresult) {
        Exception exception = getException();
        if (zzadc() && exception == null) {
            taskCompletionSource.setResult(tresult);
            return;
        }
        StorageException fromExceptionAndHttpCode = StorageException.fromExceptionAndHttpCode(exception, getResultCode());
        if (!$assertionsDisabled && fromExceptionAndHttpCode == null) {
            throw new AssertionError();
        }
        taskCompletionSource.setException(fromExceptionAndHttpCode);
    }

    public void zzaD(String str, String str2) {
        try {
            this.zzcoM.zzaD(str, str2);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(str);
            Log.e("NetworkRequestProxy", valueOf.length() != 0 ? "Caught remote exception setting custom header:".concat(valueOf) : new String("Caught remote exception setting custom header:"), e);
        }
    }

    public void zzacW() {
        try {
            if (this.zzcoM == null) {
                return;
            }
            this.zzcoM.zzacW();
        } catch (RemoteException e) {
            this.zzbNH = e;
            Log.e("NetworkRequestProxy", "performRequestEnd failed with a RemoteException:", e);
        }
    }

    public String zzacZ() {
        try {
            this.zzcoM.zzacZ();
            return null;
        } catch (RemoteException e) {
            this.zzbNH = e;
            Log.e("NetworkRequestProxy", "getRawResult failed with a RemoteException:", e);
            return null;
        }
    }

    public boolean zzadc() {
        try {
            if (this.zzcoN != -2 && this.zzcoO == null) {
                return this.zzcoM.zzadc();
            }
            return false;
        } catch (RemoteException e) {
            this.zzbNH = e;
            Log.e("NetworkRequestProxy", "isResultSuccess failed with a RemoteException:", e);
            return false;
        }
    }

    public int zzadd() {
        try {
            return this.zzcoM.zzadd();
        } catch (RemoteException e) {
            this.zzbNH = e;
            Log.e("NetworkRequestProxy", "getResultingContentLength failed with a RemoteException:", e);
            return 0;
        }
    }

    public JSONObject zzadf() throws RemoteException {
        return (JSONObject) com.google.android.gms.dynamic.zzd.zzF(this.zzcoM.zzacY());
    }

    public void zzd(String str, Context context) {
        try {
            if (!zzcB(context)) {
                return;
            }
            this.zzcoM.zzjM(str);
        } catch (RemoteException e) {
            this.zzbNH = e;
            Log.e("NetworkRequestProxy", "performRequest failed with a RemoteException:", e);
        }
    }

    public void zzjN(String str) {
        try {
            this.zzcoM.zzjN(str);
        } catch (RemoteException e) {
            this.zzbNH = e;
            Log.e("NetworkRequestProxy", "performRequestStart failed with a RemoteException:", e);
        }
    }

    public String zzjO(String str) {
        try {
            return this.zzcoM.zzjO(str);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(str);
            Log.e("NetworkRequestProxy", valueOf.length() != 0 ? "getResultString failed with a RemoteException:".concat(valueOf) : new String("getResultString failed with a RemoteException:"), e);
            return null;
        }
    }
}
