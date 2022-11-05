package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.b;
import android.support.v4.media.c;
import android.text.TextUtils;
/* loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new Parcelable.Creator<MediaDescriptionCompat>() { // from class: android.support.v4.media.MediaDescriptionCompat.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return Build.VERSION.SDK_INT < 21 ? new MediaDescriptionCompat(parcel) : MediaDescriptionCompat.a(b.a(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final String f350a;
    private final CharSequence b;
    private final CharSequence c;
    private final CharSequence d;
    private final Bitmap e;
    private final Uri f;
    private final Bundle g;
    private final Uri h;
    private Object i;

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f350a = str;
        this.b = charSequence;
        this.c = charSequence2;
        this.d = charSequence3;
        this.e = bitmap;
        this.f = uri;
        this.g = bundle;
        this.h = uri2;
    }

    MediaDescriptionCompat(Parcel parcel) {
        this.f350a = parcel.readString();
        this.b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.e = (Bitmap) parcel.readParcelable(null);
        this.f = (Uri) parcel.readParcelable(null);
        this.g = parcel.readBundle();
        this.h = (Uri) parcel.readParcelable(null);
    }

    public CharSequence a() {
        return this.b;
    }

    public CharSequence b() {
        return this.c;
    }

    public Bitmap c() {
        return this.e;
    }

    public Uri d() {
        return this.f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (Build.VERSION.SDK_INT < 21) {
            parcel.writeString(this.f350a);
            TextUtils.writeToParcel(this.b, parcel, i);
            TextUtils.writeToParcel(this.c, parcel, i);
            TextUtils.writeToParcel(this.d, parcel, i);
            parcel.writeParcelable(this.e, i);
            parcel.writeParcelable(this.f, i);
            parcel.writeBundle(this.g);
            parcel.writeParcelable(this.h, i);
            return;
        }
        b.a(e(), parcel, i);
    }

    public String toString() {
        return ((Object) this.b) + ", " + ((Object) this.c) + ", " + ((Object) this.d);
    }

    public Object e() {
        if (this.i != null || Build.VERSION.SDK_INT < 21) {
            return this.i;
        }
        Object a2 = b.a.a();
        b.a.a(a2, this.f350a);
        b.a.a(a2, this.b);
        b.a.b(a2, this.c);
        b.a.c(a2, this.d);
        b.a.a(a2, this.e);
        b.a.a(a2, this.f);
        Bundle bundle = this.g;
        if (Build.VERSION.SDK_INT < 23 && this.h != null) {
            if (bundle == null) {
                bundle = new Bundle();
                bundle.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
            }
            bundle.putParcelable("android.support.v4.media.description.MEDIA_URI", this.h);
        }
        b.a.a(a2, bundle);
        if (Build.VERSION.SDK_INT >= 23) {
            c.a.b(a2, this.h);
        }
        this.i = b.a.a(a2);
        return this.i;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static MediaDescriptionCompat a(Object obj) {
        Bundle bundle;
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        a aVar = new a();
        aVar.a(b.a(obj));
        aVar.a(b.b(obj));
        aVar.b(b.c(obj));
        aVar.c(b.d(obj));
        aVar.a(b.e(obj));
        aVar.a(b.f(obj));
        Bundle g = b.g(obj);
        Uri uri = g == null ? null : (Uri) g.getParcelable("android.support.v4.media.description.MEDIA_URI");
        if (uri != null) {
            if (!g.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") || g.size() != 2) {
                g.remove("android.support.v4.media.description.MEDIA_URI");
                g.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
            } else {
                bundle = null;
                aVar.a(bundle);
                if (uri == null) {
                    aVar.b(uri);
                } else if (Build.VERSION.SDK_INT >= 23) {
                    aVar.b(c.h(obj));
                }
                MediaDescriptionCompat a2 = aVar.a();
                a2.i = obj;
                return a2;
            }
        }
        bundle = g;
        aVar.a(bundle);
        if (uri == null) {
        }
        MediaDescriptionCompat a22 = aVar.a();
        a22.i = obj;
        return a22;
    }

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private String f351a;
        private CharSequence b;
        private CharSequence c;
        private CharSequence d;
        private Bitmap e;
        private Uri f;
        private Bundle g;
        private Uri h;

        public a a(String str) {
            this.f351a = str;
            return this;
        }

        public a a(CharSequence charSequence) {
            this.b = charSequence;
            return this;
        }

        public a b(CharSequence charSequence) {
            this.c = charSequence;
            return this;
        }

        public a c(CharSequence charSequence) {
            this.d = charSequence;
            return this;
        }

        public a a(Bitmap bitmap) {
            this.e = bitmap;
            return this;
        }

        public a a(Uri uri) {
            this.f = uri;
            return this;
        }

        public a a(Bundle bundle) {
            this.g = bundle;
            return this;
        }

        public a b(Uri uri) {
            this.h = uri;
            return this;
        }

        public MediaDescriptionCompat a() {
            return new MediaDescriptionCompat(this.f351a, this.b, this.c, this.d, this.e, this.f, this.g, this.h);
        }
    }
}
