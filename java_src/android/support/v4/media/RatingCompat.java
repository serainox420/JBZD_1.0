package android.support.v4.media;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new Parcelable.Creator<RatingCompat>() { // from class: android.support.v4.media.RatingCompat.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public RatingCompat[] newArray(int i) {
            return new RatingCompat[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f354a;
    private final float b;
    private Object c;

    RatingCompat(int i, float f) {
        this.f354a = i;
        this.b = f;
    }

    public String toString() {
        return "Rating:style=" + this.f354a + " rating=" + (this.b < BitmapDescriptorFactory.HUE_RED ? "unrated" : String.valueOf(this.b));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.f354a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f354a);
        parcel.writeFloat(this.b);
    }

    public static RatingCompat a(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return new RatingCompat(i, -1.0f);
            default:
                return null;
        }
    }

    public static RatingCompat a(boolean z) {
        return new RatingCompat(1, z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
    }

    public static RatingCompat b(boolean z) {
        return new RatingCompat(2, z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
    }

    public static RatingCompat a(int i, float f) {
        float f2;
        switch (i) {
            case 3:
                f2 = 3.0f;
                break;
            case 4:
                f2 = 4.0f;
                break;
            case 5:
                f2 = 5.0f;
                break;
            default:
                Log.e("Rating", "Invalid rating style (" + i + ") for a star rating");
                return null;
        }
        if (f < BitmapDescriptorFactory.HUE_RED || f > f2) {
            Log.e("Rating", "Trying to set out of range star-based rating");
            return null;
        }
        return new RatingCompat(i, f);
    }

    public static RatingCompat a(float f) {
        if (f < BitmapDescriptorFactory.HUE_RED || f > 100.0f) {
            Log.e("Rating", "Invalid percentage-based rating value");
            return null;
        }
        return new RatingCompat(6, f);
    }

    public static RatingCompat a(Object obj) {
        RatingCompat ratingCompat = null;
        if (obj != null && Build.VERSION.SDK_INT >= 19) {
            int b = e.b(obj);
            if (e.a(obj)) {
                switch (b) {
                    case 1:
                        ratingCompat = a(e.c(obj));
                        break;
                    case 2:
                        ratingCompat = b(e.d(obj));
                        break;
                    case 3:
                    case 4:
                    case 5:
                        ratingCompat = a(b, e.e(obj));
                        break;
                    case 6:
                        ratingCompat = a(e.f(obj));
                        break;
                }
            } else {
                ratingCompat = a(b);
            }
            ratingCompat.c = obj;
        }
        return ratingCompat;
    }
}
