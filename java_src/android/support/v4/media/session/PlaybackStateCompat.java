package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.media.session.j;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new Parcelable.Creator<PlaybackStateCompat>() { // from class: android.support.v4.media.session.PlaybackStateCompat.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PlaybackStateCompat[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final int f390a;
    final long b;
    final long c;
    final float d;
    final long e;
    final int f;
    final CharSequence g;
    final long h;
    List<CustomAction> i;
    final long j;
    final Bundle k;
    private Object l;

    PlaybackStateCompat(int i, long j, long j2, float f, long j3, int i2, CharSequence charSequence, long j4, List<CustomAction> list, long j5, Bundle bundle) {
        this.f390a = i;
        this.b = j;
        this.c = j2;
        this.d = f;
        this.e = j3;
        this.f = i2;
        this.g = charSequence;
        this.h = j4;
        this.i = new ArrayList(list);
        this.j = j5;
        this.k = bundle;
    }

    PlaybackStateCompat(Parcel parcel) {
        this.f390a = parcel.readInt();
        this.b = parcel.readLong();
        this.d = parcel.readFloat();
        this.h = parcel.readLong();
        this.c = parcel.readLong();
        this.e = parcel.readLong();
        this.g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.i = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.j = parcel.readLong();
        this.k = parcel.readBundle();
        this.f = parcel.readInt();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PlaybackState {");
        sb.append("state=").append(this.f390a);
        sb.append(", position=").append(this.b);
        sb.append(", buffered position=").append(this.c);
        sb.append(", speed=").append(this.d);
        sb.append(", updated=").append(this.h);
        sb.append(", actions=").append(this.e);
        sb.append(", error code=").append(this.f);
        sb.append(", error message=").append(this.g);
        sb.append(", custom actions=").append(this.i);
        sb.append(", active item id=").append(this.j);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f390a);
        parcel.writeLong(this.b);
        parcel.writeFloat(this.d);
        parcel.writeLong(this.h);
        parcel.writeLong(this.c);
        parcel.writeLong(this.e);
        TextUtils.writeToParcel(this.g, parcel, i);
        parcel.writeTypedList(this.i);
        parcel.writeLong(this.j);
        parcel.writeBundle(this.k);
        parcel.writeInt(this.f);
    }

    public int a() {
        return this.f390a;
    }

    public long b() {
        return this.b;
    }

    public float c() {
        return this.d;
    }

    public long d() {
        return this.e;
    }

    public long e() {
        return this.h;
    }

    public static PlaybackStateCompat a(Object obj) {
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        List<Object> h = j.h(obj);
        ArrayList arrayList = null;
        if (h != null) {
            arrayList = new ArrayList(h.size());
            for (Object obj2 : h) {
                arrayList.add(CustomAction.a(obj2));
            }
        }
        PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(j.a(obj), j.b(obj), j.c(obj), j.d(obj), j.e(obj), 0, j.f(obj), j.g(obj), arrayList, j.i(obj), Build.VERSION.SDK_INT >= 22 ? k.a(obj) : null);
        playbackStateCompat.l = obj;
        return playbackStateCompat;
    }

    public Object f() {
        if (this.l != null || Build.VERSION.SDK_INT < 21) {
            return this.l;
        }
        ArrayList arrayList = null;
        if (this.i != null) {
            arrayList = new ArrayList(this.i.size());
            for (CustomAction customAction : this.i) {
                arrayList.add(customAction.a());
            }
        }
        if (Build.VERSION.SDK_INT >= 22) {
            this.l = k.a(this.f390a, this.b, this.c, this.d, this.e, this.g, this.h, arrayList, this.j, this.k);
        } else {
            this.l = j.a(this.f390a, this.b, this.c, this.d, this.e, this.g, this.h, arrayList, this.j);
        }
        return this.l;
    }

    /* loaded from: classes.dex */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new Parcelable.Creator<CustomAction>() { // from class: android.support.v4.media.session.PlaybackStateCompat.CustomAction.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public CustomAction[] newArray(int i) {
                return new CustomAction[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final String f391a;
        private final CharSequence b;
        private final int c;
        private final Bundle d;
        private Object e;

        CustomAction(String str, CharSequence charSequence, int i, Bundle bundle) {
            this.f391a = str;
            this.b = charSequence;
            this.c = i;
            this.d = bundle;
        }

        CustomAction(Parcel parcel) {
            this.f391a = parcel.readString();
            this.b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.c = parcel.readInt();
            this.d = parcel.readBundle();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f391a);
            TextUtils.writeToParcel(this.b, parcel, i);
            parcel.writeInt(this.c);
            parcel.writeBundle(this.d);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public static CustomAction a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            CustomAction customAction = new CustomAction(j.a.a(obj), j.a.b(obj), j.a.c(obj), j.a.d(obj));
            customAction.e = obj;
            return customAction;
        }

        public Object a() {
            if (this.e != null || Build.VERSION.SDK_INT < 21) {
                return this.e;
            }
            this.e = j.a.a(this.f391a, this.b, this.c, this.d);
            return this.e;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.b) + ", mIcon=" + this.c + ", mExtras=" + this.d;
        }
    }

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<CustomAction> f392a;
        private int b;
        private long c;
        private long d;
        private float e;
        private long f;
        private int g;
        private CharSequence h;
        private long i;
        private long j;
        private Bundle k;

        public a() {
            this.f392a = new ArrayList();
            this.j = -1L;
        }

        public a(PlaybackStateCompat playbackStateCompat) {
            this.f392a = new ArrayList();
            this.j = -1L;
            this.b = playbackStateCompat.f390a;
            this.c = playbackStateCompat.b;
            this.e = playbackStateCompat.d;
            this.i = playbackStateCompat.h;
            this.d = playbackStateCompat.c;
            this.f = playbackStateCompat.e;
            this.g = playbackStateCompat.f;
            this.h = playbackStateCompat.g;
            if (playbackStateCompat.i != null) {
                this.f392a.addAll(playbackStateCompat.i);
            }
            this.j = playbackStateCompat.j;
            this.k = playbackStateCompat.k;
        }

        public a a(int i, long j, float f) {
            return a(i, j, f, SystemClock.elapsedRealtime());
        }

        public a a(int i, long j, float f, long j2) {
            this.b = i;
            this.c = j;
            this.i = j2;
            this.e = f;
            return this;
        }

        public a a(long j) {
            this.f = j;
            return this;
        }

        public PlaybackStateCompat a() {
            return new PlaybackStateCompat(this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.f392a, this.j, this.k);
        }
    }
}
