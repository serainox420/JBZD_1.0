package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
@zzme
/* loaded from: classes.dex */
public final class zzmv extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzmv> CREATOR = new zzmw();
    ParcelFileDescriptor zzSQ;
    private Parcelable zzSR;
    private boolean zzSS;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzmv(ParcelFileDescriptor parcelFileDescriptor) {
        this.zzSQ = parcelFileDescriptor;
        this.zzSR = null;
        this.zzSS = true;
    }

    public zzmv(SafeParcelable safeParcelable) {
        this.zzSQ = null;
        this.zzSR = safeParcelable;
        this.zzSS = false;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.zzSQ == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.zzSR.writeToParcel(obtain, 0);
                byte[] marshall = obtain.marshall();
                obtain.recycle();
                this.zzSQ = zzj(marshall);
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        }
        zzmw.zza(this, parcel, i);
    }

    public <T extends SafeParcelable> T zza(Parcelable.Creator<T> creator) {
        if (this.zzSS) {
            if (this.zzSQ == null) {
                zzpk.e("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.zzSQ));
            try {
                try {
                    byte[] bArr = new byte[dataInputStream.readInt()];
                    dataInputStream.readFully(bArr, 0, bArr.length);
                    com.google.android.gms.common.util.zzp.zzb(dataInputStream);
                    Parcel obtain = Parcel.obtain();
                    try {
                        obtain.unmarshall(bArr, 0, bArr.length);
                        obtain.setDataPosition(0);
                        this.zzSR = creator.createFromParcel(obtain);
                        obtain.recycle();
                        this.zzSS = false;
                    } catch (Throwable th) {
                        obtain.recycle();
                        throw th;
                    }
                } catch (IOException e) {
                    throw new IllegalStateException("Could not read from parcel file descriptor", e);
                }
            } catch (Throwable th2) {
                com.google.android.gms.common.util.zzp.zzb(dataInputStream);
                throw th2;
            }
        }
        return (T) this.zzSR;
    }

    protected <T> ParcelFileDescriptor zzj(final byte[] bArr) {
        final ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
        try {
            ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
            autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(createPipe[1]);
            try {
                new Thread(new Runnable(this) { // from class: com.google.android.gms.internal.zzmv.1
                    /* JADX WARN: Removed duplicated region for block: B:16:0x0037  */
                    /* JADX WARN: Removed duplicated region for block: B:18:0x003d  */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public void run() {
                        DataOutputStream dataOutputStream;
                        try {
                            try {
                                dataOutputStream = new DataOutputStream(autoCloseOutputStream);
                                try {
                                    dataOutputStream.writeInt(bArr.length);
                                    dataOutputStream.write(bArr);
                                    com.google.android.gms.common.util.zzp.zzb(dataOutputStream);
                                } catch (IOException e) {
                                    e = e;
                                    zzpk.zzb("Error transporting the ad response", e);
                                    com.google.android.gms.ads.internal.zzw.zzcQ().zza(e, "LargeParcelTeleporter.pipeData.1");
                                    if (dataOutputStream == null) {
                                        com.google.android.gms.common.util.zzp.zzb(autoCloseOutputStream);
                                    } else {
                                        com.google.android.gms.common.util.zzp.zzb(dataOutputStream);
                                    }
                                }
                            } catch (Throwable th) {
                                th = th;
                                if (dataOutputStream != null) {
                                    com.google.android.gms.common.util.zzp.zzb(autoCloseOutputStream);
                                } else {
                                    com.google.android.gms.common.util.zzp.zzb(dataOutputStream);
                                }
                                throw th;
                            }
                        } catch (IOException e2) {
                            e = e2;
                            dataOutputStream = null;
                        } catch (Throwable th2) {
                            th = th2;
                            dataOutputStream = null;
                            if (dataOutputStream != null) {
                            }
                            throw th;
                        }
                    }
                }).start();
                return createPipe[0];
            } catch (IOException e) {
                e = e;
                zzpk.zzb("Error transporting the ad response", e);
                com.google.android.gms.ads.internal.zzw.zzcQ().zza(e, "LargeParcelTeleporter.pipeData.2");
                com.google.android.gms.common.util.zzp.zzb(autoCloseOutputStream);
                return null;
            }
        } catch (IOException e2) {
            e = e2;
            autoCloseOutputStream = null;
        }
    }
}
