package com.revmob.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes3.dex */
final class d implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private IBinder f4737a;

    public d(IBinder iBinder) {
        this.f4737a = iBinder;
    }

    public final String a() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            this.f4737a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f4737a;
    }

    public final boolean b() {
        boolean z = true;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            obtain.writeInt(1);
            this.f4737a.transact(2, obtain, obtain2, 0);
            obtain2.readException();
            if (obtain2.readInt() == 0) {
                z = false;
            }
            return z;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
