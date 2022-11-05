package com.google.android.gms.wearable.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import com.facebook.common.util.UriUtil;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.CapabilityApi;
import com.google.android.gms.wearable.Channel;
import com.google.android.gms.wearable.ChannelApi;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.DataItemBuffer;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.PutDataRequest;
import com.google.android.gms.wearable.internal.zzbw;
import com.google.android.gms.wearable.internal.zzcw;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
/* loaded from: classes2.dex */
public class zzcx extends com.google.android.gms.common.internal.zzl<zzbw> {
    private final zzbx<Object> zzbUT;
    private final zzbx<Object> zzbUU;
    private final zzbx<ChannelApi.ChannelListener> zzbUV;
    private final zzbx<DataApi.DataListener> zzbUW;
    private final zzbx<MessageApi.MessageListener> zzbUX;
    private final zzbx<NodeApi.NodeListener> zzbUY;
    private final zzbx<Object> zzbUZ;
    private final zzbx<CapabilityApi.CapabilityListener> zzbVa;
    private final zzcz zzbVb;
    private final ExecutorService zzbtI;

    public zzcx(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, com.google.android.gms.common.internal.zzg zzgVar) {
        this(context, looper, connectionCallbacks, onConnectionFailedListener, zzgVar, Executors.newCachedThreadPool(), zzcz.zzck(context));
    }

    zzcx(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, com.google.android.gms.common.internal.zzg zzgVar, ExecutorService executorService, zzcz zzczVar) {
        super(context, looper, 14, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zzbUT = new zzbx<>();
        this.zzbUU = new zzbx<>();
        this.zzbUV = new zzbx<>();
        this.zzbUW = new zzbx<>();
        this.zzbUX = new zzbx<>();
        this.zzbUY = new zzbx<>();
        this.zzbUZ = new zzbx<>();
        this.zzbVa = new zzbx<>();
        this.zzbtI = (ExecutorService) com.google.android.gms.common.internal.zzac.zzw(executorService);
        this.zzbVb = zzczVar;
    }

    private FutureTask<Boolean> zza(final ParcelFileDescriptor parcelFileDescriptor, final byte[] bArr) {
        return new FutureTask<>(new Callable<Boolean>(this) { // from class: com.google.android.gms.wearable.internal.zzcx.1
            @Override // java.util.concurrent.Callable
            /* renamed from: zzbX */
            public Boolean call() {
                if (Log.isLoggable("WearableClient", 3)) {
                    String valueOf = String.valueOf(parcelFileDescriptor);
                    Log.d("WearableClient", new StringBuilder(String.valueOf(valueOf).length() + 36).append("processAssets: writing data to FD : ").append(valueOf).toString());
                }
                ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor);
                try {
                    try {
                        autoCloseOutputStream.write(bArr);
                        autoCloseOutputStream.flush();
                        if (Log.isLoggable("WearableClient", 3)) {
                            String valueOf2 = String.valueOf(parcelFileDescriptor);
                            Log.d("WearableClient", new StringBuilder(String.valueOf(valueOf2).length() + 27).append("processAssets: wrote data: ").append(valueOf2).toString());
                        }
                        try {
                            if (Log.isLoggable("WearableClient", 3)) {
                                String valueOf3 = String.valueOf(parcelFileDescriptor);
                                Log.d("WearableClient", new StringBuilder(String.valueOf(valueOf3).length() + 24).append("processAssets: closing: ").append(valueOf3).toString());
                            }
                            autoCloseOutputStream.close();
                            return true;
                        } catch (IOException e) {
                            return true;
                        }
                    } catch (IOException e2) {
                        String valueOf4 = String.valueOf(parcelFileDescriptor);
                        Log.w("WearableClient", new StringBuilder(String.valueOf(valueOf4).length() + 36).append("processAssets: writing data failed: ").append(valueOf4).toString());
                        return false;
                    }
                } finally {
                    try {
                        if (Log.isLoggable("WearableClient", 3)) {
                            String valueOf5 = String.valueOf(parcelFileDescriptor);
                            Log.d("WearableClient", new StringBuilder(String.valueOf(valueOf5).length() + 24).append("processAssets: closing: ").append(valueOf5).toString());
                        }
                        autoCloseOutputStream.close();
                    } catch (IOException e3) {
                    }
                }
            }
        });
    }

    private Runnable zzb(final zzaad.zzb<Status> zzbVar, final String str, final Uri uri, final long j, final long j2) {
        com.google.android.gms.common.internal.zzac.zzw(zzbVar);
        com.google.android.gms.common.internal.zzac.zzw(str);
        com.google.android.gms.common.internal.zzac.zzw(uri);
        com.google.android.gms.common.internal.zzac.zzb(j >= 0, "startOffset is negative: %s", Long.valueOf(j));
        com.google.android.gms.common.internal.zzac.zzb(j2 >= -1, "invalid length: %s", Long.valueOf(j2));
        return new Runnable() { // from class: com.google.android.gms.wearable.internal.zzcx.3
            @Override // java.lang.Runnable
            public void run() {
                if (Log.isLoggable("WearableClient", 2)) {
                    Log.v("WearableClient", "Executing sendFileToChannelTask");
                }
                if (!UriUtil.LOCAL_FILE_SCHEME.equals(uri.getScheme())) {
                    Log.w("WearableClient", "Channel.sendFile used with non-file URI");
                    zzbVar.zzB(new Status(10, "Channel.sendFile used with non-file URI"));
                    return;
                }
                File file = new File(uri.getPath());
                try {
                    ParcelFileDescriptor open = ParcelFileDescriptor.open(file, DriveFile.MODE_READ_ONLY);
                    try {
                        try {
                            ((zzbw) zzcx.this.zzxD()).zza(new zzcw.zzr(zzbVar), str, open, j, j2);
                        } finally {
                            try {
                                open.close();
                            } catch (IOException e) {
                                Log.w("WearableClient", "Failed to close sourceFd", e);
                            }
                        }
                    } catch (RemoteException e2) {
                        Log.w("WearableClient", "Channel.sendFile failed.", e2);
                        zzbVar.zzB(new Status(8));
                        try {
                            open.close();
                        } catch (IOException e3) {
                            Log.w("WearableClient", "Failed to close sourceFd", e3);
                        }
                    }
                } catch (FileNotFoundException e4) {
                    String valueOf = String.valueOf(file);
                    Log.w("WearableClient", new StringBuilder(String.valueOf(valueOf).length() + 46).append("File couldn't be opened for Channel.sendFile: ").append(valueOf).toString());
                    zzbVar.zzB(new Status(13));
                }
            }
        };
    }

    private Runnable zzb(final zzaad.zzb<Status> zzbVar, final String str, final Uri uri, final boolean z) {
        com.google.android.gms.common.internal.zzac.zzw(zzbVar);
        com.google.android.gms.common.internal.zzac.zzw(str);
        com.google.android.gms.common.internal.zzac.zzw(uri);
        return new Runnable() { // from class: com.google.android.gms.wearable.internal.zzcx.2
            @Override // java.lang.Runnable
            public void run() {
                if (Log.isLoggable("WearableClient", 2)) {
                    Log.v("WearableClient", "Executing receiveFileFromChannelTask");
                }
                if (!UriUtil.LOCAL_FILE_SCHEME.equals(uri.getScheme())) {
                    Log.w("WearableClient", "Channel.receiveFile used with non-file URI");
                    zzbVar.zzB(new Status(10, "Channel.receiveFile used with non-file URI"));
                    return;
                }
                File file = new File(uri.getPath());
                try {
                    ParcelFileDescriptor open = ParcelFileDescriptor.open(file, (z ? 33554432 : 0) | 671088640);
                    try {
                        try {
                            ((zzbw) zzcx.this.zzxD()).zza(new zzcw.zzu(zzbVar), str, open);
                            try {
                                open.close();
                            } catch (IOException e) {
                                Log.w("WearableClient", "Failed to close targetFd", e);
                            }
                        } catch (RemoteException e2) {
                            Log.w("WearableClient", "Channel.receiveFile failed.", e2);
                            zzbVar.zzB(new Status(8));
                            try {
                                open.close();
                            } catch (IOException e3) {
                                Log.w("WearableClient", "Failed to close targetFd", e3);
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            open.close();
                        } catch (IOException e4) {
                            Log.w("WearableClient", "Failed to close targetFd", e4);
                        }
                        throw th;
                    }
                } catch (FileNotFoundException e5) {
                    String valueOf = String.valueOf(file);
                    Log.w("WearableClient", new StringBuilder(String.valueOf(valueOf).length() + 49).append("File couldn't be opened for Channel.receiveFile: ").append(valueOf).toString());
                    zzbVar.zzB(new Status(13));
                }
            }
        };
    }

    public static Intent zzcj(Context context) {
        Intent intent = new Intent("com.google.android.wearable.app.cn.UPDATE_ANDROID_WEAR").setPackage("com.google.android.wearable.app.cn");
        return context.getPackageManager().resolveActivity(intent, 65536) != null ? intent : new Intent("android.intent.action.VIEW", Uri.parse("market://details").buildUpon().appendQueryParameter("id", "com.google.android.wearable.app.cn").build());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    public void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        if (Log.isLoggable("WearableClient", 2)) {
            Log.d("WearableClient", new StringBuilder(41).append("onPostInitHandler: statusCode ").append(i).toString());
        }
        if (i == 0) {
            this.zzbUT.zzfE(iBinder);
            this.zzbUU.zzfE(iBinder);
            this.zzbUV.zzfE(iBinder);
            this.zzbUW.zzfE(iBinder);
            this.zzbUX.zzfE(iBinder);
            this.zzbUY.zzfE(iBinder);
            this.zzbUZ.zzfE(iBinder);
            this.zzbVa.zzfE(iBinder);
        }
        super.zza(i, iBinder, bundle, i2);
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public void zza(zzf.InterfaceC0175zzf interfaceC0175zzf) {
        int i = 0;
        if (!zzvh()) {
            try {
                Bundle bundle = getContext().getPackageManager().getApplicationInfo("com.google.android.wearable.app.cn", 128).metaData;
                if (bundle != null) {
                    i = bundle.getInt("com.google.android.wearable.api.version", 0);
                }
                if (i < com.google.android.gms.common.zze.GOOGLE_PLAY_SERVICES_VERSION_CODE) {
                    Log.w("WearableClient", new StringBuilder(80).append("Android Wear out of date. Requires API version ").append(com.google.android.gms.common.zze.GOOGLE_PLAY_SERVICES_VERSION_CODE).append(" but found ").append(i).toString());
                    zza(interfaceC0175zzf, 6, PendingIntent.getActivity(getContext(), 0, zzcj(getContext()), 0));
                    return;
                }
            } catch (PackageManager.NameNotFoundException e) {
                zza(interfaceC0175zzf, 16, (PendingIntent) null);
                return;
            }
        }
        super.zza(interfaceC0175zzf);
    }

    public void zza(zzaad.zzb<DataApi.DataItemResult> zzbVar, Uri uri) throws RemoteException {
        ((zzbw) zzxD()).zza(new zzcw.zzk(zzbVar), uri);
    }

    public void zza(zzaad.zzb<DataItemBuffer> zzbVar, Uri uri, int i) throws RemoteException {
        ((zzbw) zzxD()).zza(new zzcw.zzl(zzbVar), uri, i);
    }

    public void zza(zzaad.zzb<DataApi.GetFdForAssetResult> zzbVar, Asset asset) throws RemoteException {
        ((zzbw) zzxD()).zza(new zzcw.zzm(zzbVar), asset);
    }

    public void zza(zzaad.zzb<Status> zzbVar, CapabilityApi.CapabilityListener capabilityListener) throws RemoteException {
        this.zzbVa.zza(this, zzbVar, capabilityListener);
    }

    public void zza(zzaad.zzb<Status> zzbVar, CapabilityApi.CapabilityListener capabilityListener, zzabh<CapabilityApi.CapabilityListener> zzabhVar, IntentFilter[] intentFilterArr) throws RemoteException {
        this.zzbVa.zza(this, zzbVar, capabilityListener, zzcy.zze(zzabhVar, intentFilterArr));
    }

    public void zza(zzaad.zzb<Status> zzbVar, ChannelApi.ChannelListener channelListener, zzabh<ChannelApi.ChannelListener> zzabhVar, String str, IntentFilter[] intentFilterArr) throws RemoteException {
        if (str == null) {
            this.zzbUV.zza(this, zzbVar, channelListener, zzcy.zzd(zzabhVar, intentFilterArr));
            return;
        }
        this.zzbUV.zza(this, zzbVar, new zzcq(str, channelListener), zzcy.zza(zzabhVar, str, intentFilterArr));
    }

    public void zza(zzaad.zzb<Status> zzbVar, ChannelApi.ChannelListener channelListener, String str) throws RemoteException {
        if (str == null) {
            this.zzbUV.zza(this, zzbVar, channelListener);
            return;
        }
        this.zzbUV.zza(this, zzbVar, new zzcq(str, channelListener));
    }

    public void zza(zzaad.zzb<Status> zzbVar, DataApi.DataListener dataListener) throws RemoteException {
        this.zzbUW.zza(this, zzbVar, dataListener);
    }

    public void zza(zzaad.zzb<Status> zzbVar, DataApi.DataListener dataListener, zzabh<DataApi.DataListener> zzabhVar, IntentFilter[] intentFilterArr) throws RemoteException {
        this.zzbUW.zza(this, zzbVar, dataListener, zzcy.zza(zzabhVar, intentFilterArr));
    }

    public void zza(zzaad.zzb<DataApi.GetFdForAssetResult> zzbVar, DataItemAsset dataItemAsset) throws RemoteException {
        zza(zzbVar, Asset.createFromRef(dataItemAsset.getId()));
    }

    public void zza(zzaad.zzb<Status> zzbVar, MessageApi.MessageListener messageListener) throws RemoteException {
        this.zzbUX.zza(this, zzbVar, messageListener);
    }

    public void zza(zzaad.zzb<Status> zzbVar, MessageApi.MessageListener messageListener, zzabh<MessageApi.MessageListener> zzabhVar, IntentFilter[] intentFilterArr) throws RemoteException {
        this.zzbUX.zza(this, zzbVar, messageListener, zzcy.zzb(zzabhVar, intentFilterArr));
    }

    public void zza(zzaad.zzb<Status> zzbVar, NodeApi.NodeListener nodeListener) throws RemoteException {
        this.zzbUY.zza(this, zzbVar, nodeListener);
    }

    public void zza(zzaad.zzb<Status> zzbVar, NodeApi.NodeListener nodeListener, zzabh<NodeApi.NodeListener> zzabhVar, IntentFilter[] intentFilterArr) throws RemoteException {
        this.zzbUY.zza(this, zzbVar, nodeListener, zzcy.zzc(zzabhVar, intentFilterArr));
    }

    public void zza(zzaad.zzb<DataApi.DataItemResult> zzbVar, PutDataRequest putDataRequest) throws RemoteException {
        for (Map.Entry<String, Asset> entry : putDataRequest.getAssets().entrySet()) {
            Asset value = entry.getValue();
            if (value.getData() == null && value.getDigest() == null && value.getFd() == null && value.getUri() == null) {
                String valueOf = String.valueOf(putDataRequest.getUri());
                String valueOf2 = String.valueOf(value);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 33 + String.valueOf(valueOf2).length()).append("Put for ").append(valueOf).append(" contains invalid asset: ").append(valueOf2).toString());
            }
        }
        PutDataRequest zzy = PutDataRequest.zzy(putDataRequest.getUri());
        zzy.setData(putDataRequest.getData());
        if (putDataRequest.isUrgent()) {
            zzy.setUrgent();
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, Asset> entry2 : putDataRequest.getAssets().entrySet()) {
            Asset value2 = entry2.getValue();
            if (value2.getData() != null) {
                try {
                    ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
                    if (Log.isLoggable("WearableClient", 3)) {
                        String valueOf3 = String.valueOf(value2);
                        String valueOf4 = String.valueOf(createPipe[0]);
                        String valueOf5 = String.valueOf(createPipe[1]);
                        Log.d("WearableClient", new StringBuilder(String.valueOf(valueOf3).length() + 61 + String.valueOf(valueOf4).length() + String.valueOf(valueOf5).length()).append("processAssets: replacing data with FD in asset: ").append(valueOf3).append(" read:").append(valueOf4).append(" write:").append(valueOf5).toString());
                    }
                    zzy.putAsset(entry2.getKey(), Asset.createFromFd(createPipe[0]));
                    FutureTask<Boolean> zza = zza(createPipe[1], value2.getData());
                    arrayList.add(zza);
                    this.zzbtI.submit(zza);
                } catch (IOException e) {
                    String valueOf6 = String.valueOf(putDataRequest);
                    throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf6).length() + 60).append("Unable to create ParcelFileDescriptor for asset in request: ").append(valueOf6).toString(), e);
                }
            } else if (value2.getUri() != null) {
                try {
                    zzy.putAsset(entry2.getKey(), Asset.createFromFd(getContext().getContentResolver().openFileDescriptor(value2.getUri(), "r")));
                } catch (FileNotFoundException e2) {
                    new zzcw.zzq(zzbVar, arrayList).zza(new zzci(4005, null));
                    String valueOf7 = String.valueOf(value2.getUri());
                    Log.w("WearableClient", new StringBuilder(String.valueOf(valueOf7).length() + 28).append("Couldn't resolve asset URI: ").append(valueOf7).toString());
                    return;
                }
            } else {
                zzy.putAsset(entry2.getKey(), value2);
            }
        }
        ((zzbw) zzxD()).zza(new zzcw.zzq(zzbVar, arrayList), zzy);
    }

    public void zza(zzaad.zzb<Status> zzbVar, String str, Uri uri, long j, long j2) {
        try {
            this.zzbtI.execute(zzb(zzbVar, str, uri, j, j2));
        } catch (RuntimeException e) {
            zzbVar.zzB(new Status(8));
            throw e;
        }
    }

    public void zza(zzaad.zzb<Status> zzbVar, String str, Uri uri, boolean z) {
        try {
            this.zzbtI.execute(zzb(zzbVar, str, uri, z));
        } catch (RuntimeException e) {
            zzbVar.zzB(new Status(8));
            throw e;
        }
    }

    public void zza(zzaad.zzb<MessageApi.SendMessageResult> zzbVar, String str, String str2, byte[] bArr) throws RemoteException {
        ((zzbw) zzxD()).zza(new zzcw.zzt(zzbVar), str, str2, bArr);
    }

    public void zzb(zzaad.zzb<DataApi.DeleteDataItemsResult> zzbVar, Uri uri, int i) throws RemoteException {
        ((zzbw) zzxD()).zzb(new zzcw.zze(zzbVar), uri, i);
    }

    public void zzd(zzaad.zzb<CapabilityApi.GetAllCapabilitiesResult> zzbVar, int i) throws RemoteException {
        ((zzbw) zzxD()).zza(new zzcw.zzf(zzbVar), i);
    }

    public void zze(zzaad.zzb<ChannelApi.OpenChannelResult> zzbVar, String str, String str2) throws RemoteException {
        ((zzbw) zzxD()).zza(new zzcw.zzp(zzbVar), str, str2);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.wearable.internal.IWearableService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.wearable.BIND";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzfF */
    public zzbw zzh(IBinder iBinder) {
        return zzbw.zza.zzfD(iBinder);
    }

    public void zzh(zzaad.zzb<CapabilityApi.GetCapabilityResult> zzbVar, String str, int i) throws RemoteException {
        ((zzbw) zzxD()).zza(new zzcw.zzg(zzbVar), str, i);
    }

    public void zzi(zzaad.zzb<Status> zzbVar, String str, int i) throws RemoteException {
        ((zzbw) zzxD()).zzb(new zzcw.zzd(zzbVar), str, i);
    }

    public void zzv(zzaad.zzb<CapabilityApi.AddLocalCapabilityResult> zzbVar, String str) throws RemoteException {
        ((zzbw) zzxD()).zzd(new zzcw.zza(zzbVar), str);
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public boolean zzvh() {
        return !this.zzbVb.zziq("com.google.android.wearable.app.cn");
    }

    public void zzw(zzaad.zzb<DataItemBuffer> zzbVar) throws RemoteException {
        ((zzbw) zzxD()).zzb(new zzcw.zzl(zzbVar));
    }

    public void zzw(zzaad.zzb<CapabilityApi.RemoveLocalCapabilityResult> zzbVar, String str) throws RemoteException {
        ((zzbw) zzxD()).zze(new zzcw.zzs(zzbVar), str);
    }

    public void zzx(zzaad.zzb<NodeApi.GetLocalNodeResult> zzbVar) throws RemoteException {
        ((zzbw) zzxD()).zzc(new zzcw.zzn(zzbVar));
    }

    public void zzx(zzaad.zzb<Status> zzbVar, String str) throws RemoteException {
        ((zzbw) zzxD()).zzf(new zzcw.zzc(zzbVar), str);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzxv() {
        return this.zzbVb.zziq("com.google.android.wearable.app.cn") ? "com.google.android.wearable.app.cn" : "com.google.android.gms";
    }

    public void zzy(zzaad.zzb<NodeApi.GetConnectedNodesResult> zzbVar) throws RemoteException {
        ((zzbw) zzxD()).zzd(new zzcw.zzj(zzbVar));
    }

    public void zzy(zzaad.zzb<Channel.GetInputStreamResult> zzbVar, String str) throws RemoteException {
        zzac zzacVar = new zzac();
        ((zzbw) zzxD()).zza(new zzcw.zzh(zzbVar, zzacVar), zzacVar, str);
    }

    public void zzz(zzaad.zzb<Channel.GetOutputStreamResult> zzbVar, String str) throws RemoteException {
        zzac zzacVar = new zzac();
        ((zzbw) zzxD()).zzb(new zzcw.zzi(zzbVar, zzacVar), zzacVar, str);
    }
}
