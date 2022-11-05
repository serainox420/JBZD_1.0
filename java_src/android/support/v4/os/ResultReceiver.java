package android.support.v4.os;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.annotation.RestrictTo;
import android.support.v4.os.d;
@RestrictTo
/* loaded from: classes.dex */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new Parcelable.Creator<ResultReceiver>() { // from class: android.support.v4.os.ResultReceiver.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ResultReceiver createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ResultReceiver[] newArray(int i) {
            return new ResultReceiver[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final boolean f400a = false;
    final Handler b = null;
    d c;

    /* loaded from: classes.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final int f402a;
        final Bundle b;

        b(int i, Bundle bundle) {
            this.f402a = i;
            this.b = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            ResultReceiver.this.a(this.f402a, this.b);
        }
    }

    /* loaded from: classes.dex */
    class a extends d.a {
        a() {
        }

        @Override // android.support.v4.os.d
        public void a(int i, Bundle bundle) {
            if (ResultReceiver.this.b != null) {
                ResultReceiver.this.b.post(new b(i, bundle));
            } else {
                ResultReceiver.this.a(i, bundle);
            }
        }
    }

    public void b(int i, Bundle bundle) {
        if (this.f400a) {
            if (this.b != null) {
                this.b.post(new b(i, bundle));
            } else {
                a(i, bundle);
            }
        } else if (this.c != null) {
            try {
                this.c.a(i, bundle);
            } catch (RemoteException e) {
            }
        }
    }

    protected void a(int i, Bundle bundle) {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.c == null) {
                this.c = new a();
            }
            parcel.writeStrongBinder(this.c.asBinder());
        }
    }

    ResultReceiver(Parcel parcel) {
        this.c = d.a.a(parcel.readStrongBinder());
    }
}
