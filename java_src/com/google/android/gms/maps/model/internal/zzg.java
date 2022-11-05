package com.google.android.gms.maps.model.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import java.util.List;
/* loaded from: classes2.dex */
public interface zzg extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class zza extends Binder implements zzg {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.google.android.gms.maps.model.internal.zzg$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0471zza implements zzg {
            private IBinder zzrk;

            C0471zza(IBinder iBinder) {
                this.zzrk = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzrk;
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public int getFillColor() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.zzrk.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public List getHoles() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.zzrk.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readArrayList(getClass().getClassLoader());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public String getId() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.zzrk.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public List<LatLng> getPoints() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.zzrk.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(LatLng.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public int getStrokeColor() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.zzrk.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public int getStrokeJointType() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.zzrk.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public List<PatternItem> getStrokePattern() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.zzrk.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(PatternItem.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public float getStrokeWidth() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.zzrk.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readFloat();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public IObjectWrapper getTag() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.zzrk.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                    return IObjectWrapper.zza.zzcd(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public float getZIndex() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.zzrk.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readFloat();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public int hashCodeRemote() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.zzrk.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public boolean isClickable() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.zzrk.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public boolean isGeodesic() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.zzrk.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public boolean isVisible() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.zzrk.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public void remove() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    this.zzrk.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public void setClickable(boolean z) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public void setFillColor(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    obtain.writeInt(i);
                    this.zzrk.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public void setGeodesic(boolean z) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public void setHoles(List list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    obtain.writeList(list);
                    this.zzrk.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public void setPoints(List<LatLng> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    obtain.writeTypedList(list);
                    this.zzrk.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public void setStrokeColor(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    obtain.writeInt(i);
                    this.zzrk.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public void setStrokeJointType(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    obtain.writeInt(i);
                    this.zzrk.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public void setStrokePattern(List<PatternItem> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    obtain.writeTypedList(list);
                    this.zzrk.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public void setStrokeWidth(float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    obtain.writeFloat(f);
                    this.zzrk.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public void setTag(IObjectWrapper iObjectWrapper) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    obtain.writeStrongBinder(iObjectWrapper != null ? iObjectWrapper.asBinder() : null);
                    this.zzrk.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public void setVisible(boolean z) throws RemoteException {
                int i = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    if (z) {
                        i = 1;
                    }
                    obtain.writeInt(i);
                    this.zzrk.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public void setZIndex(float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    obtain.writeFloat(f);
                    this.zzrk.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.maps.model.internal.zzg
            public boolean zzb(zzg zzgVar) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    obtain.writeStrongBinder(zzgVar != null ? zzgVar.asBinder() : null);
                    this.zzrk.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzg zzeo(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzg)) ? new C0471zza(iBinder) : (zzg) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            int i3 = 0;
            boolean z = false;
            int i4 = 0;
            boolean z2 = false;
            int i5 = 0;
            int i6 = 0;
            boolean z3 = false;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    remove();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    String id = getId();
                    parcel2.writeNoException();
                    parcel2.writeString(id);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    setPoints(parcel.createTypedArrayList(LatLng.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    List<LatLng> points = getPoints();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(points);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    setHoles(parcel.readArrayList(getClass().getClassLoader()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    List holes = getHoles();
                    parcel2.writeNoException();
                    parcel2.writeList(holes);
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    setStrokeWidth(parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    float strokeWidth = getStrokeWidth();
                    parcel2.writeNoException();
                    parcel2.writeFloat(strokeWidth);
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    setStrokeColor(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    int strokeColor = getStrokeColor();
                    parcel2.writeNoException();
                    parcel2.writeInt(strokeColor);
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    setFillColor(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    int fillColor = getFillColor();
                    parcel2.writeNoException();
                    parcel2.writeInt(fillColor);
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    setZIndex(parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    float zIndex = getZIndex();
                    parcel2.writeNoException();
                    parcel2.writeFloat(zIndex);
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    setVisible(z);
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    boolean isVisible = isVisible();
                    parcel2.writeNoException();
                    if (isVisible) {
                        i4 = 1;
                    }
                    parcel2.writeInt(i4);
                    return true;
                case 17:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    if (parcel.readInt() != 0) {
                        z2 = true;
                    }
                    setGeodesic(z2);
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    boolean isGeodesic = isGeodesic();
                    parcel2.writeNoException();
                    if (isGeodesic) {
                        i5 = 1;
                    }
                    parcel2.writeInt(i5);
                    return true;
                case 19:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    boolean zzb = zzb(zzeo(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (zzb) {
                        i6 = 1;
                    }
                    parcel2.writeInt(i6);
                    return true;
                case 20:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    int hashCodeRemote = hashCodeRemote();
                    parcel2.writeNoException();
                    parcel2.writeInt(hashCodeRemote);
                    return true;
                case 21:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    if (parcel.readInt() != 0) {
                        z3 = true;
                    }
                    setClickable(z3);
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    boolean isClickable = isClickable();
                    parcel2.writeNoException();
                    if (isClickable) {
                        i3 = 1;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case 23:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    setStrokeJointType(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    int strokeJointType = getStrokeJointType();
                    parcel2.writeNoException();
                    parcel2.writeInt(strokeJointType);
                    return true;
                case 25:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    setStrokePattern(parcel.createTypedArrayList(PatternItem.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    List<PatternItem> strokePattern = getStrokePattern();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(strokePattern);
                    return true;
                case 27:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    setTag(IObjectWrapper.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    IObjectWrapper tag = getTag();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(tag != null ? tag.asBinder() : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.maps.model.internal.IPolygonDelegate");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    int getFillColor() throws RemoteException;

    List getHoles() throws RemoteException;

    String getId() throws RemoteException;

    List<LatLng> getPoints() throws RemoteException;

    int getStrokeColor() throws RemoteException;

    int getStrokeJointType() throws RemoteException;

    List<PatternItem> getStrokePattern() throws RemoteException;

    float getStrokeWidth() throws RemoteException;

    IObjectWrapper getTag() throws RemoteException;

    float getZIndex() throws RemoteException;

    int hashCodeRemote() throws RemoteException;

    boolean isClickable() throws RemoteException;

    boolean isGeodesic() throws RemoteException;

    boolean isVisible() throws RemoteException;

    void remove() throws RemoteException;

    void setClickable(boolean z) throws RemoteException;

    void setFillColor(int i) throws RemoteException;

    void setGeodesic(boolean z) throws RemoteException;

    void setHoles(List list) throws RemoteException;

    void setPoints(List<LatLng> list) throws RemoteException;

    void setStrokeColor(int i) throws RemoteException;

    void setStrokeJointType(int i) throws RemoteException;

    void setStrokePattern(List<PatternItem> list) throws RemoteException;

    void setStrokeWidth(float f) throws RemoteException;

    void setTag(IObjectWrapper iObjectWrapper) throws RemoteException;

    void setVisible(boolean z) throws RemoteException;

    void setZIndex(float f) throws RemoteException;

    boolean zzb(zzg zzgVar) throws RemoteException;
}
