package com.google.android.gms.iid;

import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.iid.zzb;
/* loaded from: classes2.dex */
public class MessengerCompat implements ReflectedParcelable {
    public static final Parcelable.Creator<MessengerCompat> CREATOR = new Parcelable.Creator<MessengerCompat>() { // from class: com.google.android.gms.iid.MessengerCompat.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: zzgs */
        public MessengerCompat createFromParcel(Parcel parcel) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                return new MessengerCompat(readStrongBinder);
            }
            return null;
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: zzjK */
        public MessengerCompat[] newArray(int i) {
            return new MessengerCompat[i];
        }
    };
    Messenger zzbhO;
    zzb zzbhP;

    public MessengerCompat(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.zzbhO = new Messenger(iBinder);
        } else {
            this.zzbhP = zzb.zza.zzcZ(iBinder);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return getBinder().equals(((MessengerCompat) obj).getBinder());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public IBinder getBinder() {
        return this.zzbhO != null ? this.zzbhO.getBinder() : this.zzbhP.asBinder();
    }

    public int hashCode() {
        return getBinder().hashCode();
    }

    public void send(Message message) throws RemoteException {
        if (this.zzbhO != null) {
            this.zzbhO.send(message);
        } else {
            this.zzbhP.send(message);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.zzbhO != null) {
            parcel.writeStrongBinder(this.zzbhO.getBinder());
        } else {
            parcel.writeStrongBinder(this.zzbhP.asBinder());
        }
    }
}
