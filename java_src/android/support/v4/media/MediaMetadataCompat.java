package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.media.MediaDescriptionCompat;
import android.text.TextUtils;
import android.util.Log;
/* loaded from: classes.dex */
public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR;

    /* renamed from: a  reason: collision with root package name */
    static final android.support.v4.f.a<String, Integer> f352a = new android.support.v4.f.a<>();
    private static final String[] c;
    private static final String[] d;
    private static final String[] e;
    final Bundle b;
    private Object f;
    private MediaDescriptionCompat g;

    static {
        f352a.put("android.media.metadata.TITLE", 1);
        f352a.put("android.media.metadata.ARTIST", 1);
        f352a.put("android.media.metadata.DURATION", 0);
        f352a.put("android.media.metadata.ALBUM", 1);
        f352a.put("android.media.metadata.AUTHOR", 1);
        f352a.put("android.media.metadata.WRITER", 1);
        f352a.put("android.media.metadata.COMPOSER", 1);
        f352a.put("android.media.metadata.COMPILATION", 1);
        f352a.put("android.media.metadata.DATE", 1);
        f352a.put("android.media.metadata.YEAR", 0);
        f352a.put("android.media.metadata.GENRE", 1);
        f352a.put("android.media.metadata.TRACK_NUMBER", 0);
        f352a.put("android.media.metadata.NUM_TRACKS", 0);
        f352a.put("android.media.metadata.DISC_NUMBER", 0);
        f352a.put("android.media.metadata.ALBUM_ARTIST", 1);
        f352a.put("android.media.metadata.ART", 2);
        f352a.put("android.media.metadata.ART_URI", 1);
        f352a.put("android.media.metadata.ALBUM_ART", 2);
        f352a.put("android.media.metadata.ALBUM_ART_URI", 1);
        f352a.put("android.media.metadata.USER_RATING", 3);
        f352a.put("android.media.metadata.RATING", 3);
        f352a.put("android.media.metadata.DISPLAY_TITLE", 1);
        f352a.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        f352a.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        f352a.put("android.media.metadata.DISPLAY_ICON", 2);
        f352a.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        f352a.put("android.media.metadata.MEDIA_ID", 1);
        f352a.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        f352a.put("android.media.metadata.MEDIA_URI", 1);
        f352a.put("android.media.metadata.ADVERTISEMENT", 0);
        c = new String[]{"android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER"};
        d = new String[]{"android.media.metadata.DISPLAY_ICON", "android.media.metadata.ART", "android.media.metadata.ALBUM_ART"};
        e = new String[]{"android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART_URI"};
        CREATOR = new Parcelable.Creator<MediaMetadataCompat>() { // from class: android.support.v4.media.MediaMetadataCompat.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public MediaMetadataCompat createFromParcel(Parcel parcel) {
                return new MediaMetadataCompat(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public MediaMetadataCompat[] newArray(int i) {
                return new MediaMetadataCompat[i];
            }
        };
    }

    MediaMetadataCompat(Bundle bundle) {
        this.b = new Bundle(bundle);
    }

    MediaMetadataCompat(Parcel parcel) {
        this.b = parcel.readBundle();
    }

    public boolean a(String str) {
        return this.b.containsKey(str);
    }

    public CharSequence b(String str) {
        return this.b.getCharSequence(str);
    }

    public String c(String str) {
        CharSequence charSequence = this.b.getCharSequence(str);
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public long d(String str) {
        return this.b.getLong(str, 0L);
    }

    public Bitmap e(String str) {
        try {
            return (Bitmap) this.b.getParcelable(str);
        } catch (Exception e2) {
            Log.w("MediaMetadata", "Failed to retrieve a key as Bitmap.", e2);
            return null;
        }
    }

    public MediaDescriptionCompat a() {
        int i;
        Bitmap bitmap;
        Uri uri;
        Uri uri2 = null;
        if (this.g != null) {
            return this.g;
        }
        String c2 = c("android.media.metadata.MEDIA_ID");
        CharSequence[] charSequenceArr = new CharSequence[3];
        CharSequence b = b("android.media.metadata.DISPLAY_TITLE");
        if (!TextUtils.isEmpty(b)) {
            charSequenceArr[0] = b;
            charSequenceArr[1] = b("android.media.metadata.DISPLAY_SUBTITLE");
            charSequenceArr[2] = b("android.media.metadata.DISPLAY_DESCRIPTION");
        } else {
            int i2 = 0;
            int i3 = 0;
            while (i3 < charSequenceArr.length && i2 < c.length) {
                int i4 = i2 + 1;
                CharSequence b2 = b(c[i2]);
                if (!TextUtils.isEmpty(b2)) {
                    i = i3 + 1;
                    charSequenceArr[i3] = b2;
                } else {
                    i = i3;
                }
                i3 = i;
                i2 = i4;
            }
        }
        int i5 = 0;
        while (true) {
            if (i5 >= d.length) {
                bitmap = null;
                break;
            }
            Bitmap e2 = e(d[i5]);
            if (e2 != null) {
                bitmap = e2;
                break;
            }
            i5++;
        }
        int i6 = 0;
        while (true) {
            if (i6 >= e.length) {
                uri = null;
                break;
            }
            String c3 = c(e[i6]);
            if (TextUtils.isEmpty(c3)) {
                i6++;
            } else {
                uri = Uri.parse(c3);
                break;
            }
        }
        String c4 = c("android.media.metadata.MEDIA_URI");
        if (!TextUtils.isEmpty(c4)) {
            uri2 = Uri.parse(c4);
        }
        MediaDescriptionCompat.a aVar = new MediaDescriptionCompat.a();
        aVar.a(c2);
        aVar.a(charSequenceArr[0]);
        aVar.b(charSequenceArr[1]);
        aVar.c(charSequenceArr[2]);
        aVar.a(bitmap);
        aVar.a(uri);
        aVar.b(uri2);
        if (this.b.containsKey("android.media.metadata.BT_FOLDER_TYPE")) {
            Bundle bundle = new Bundle();
            bundle.putLong("android.media.extra.BT_FOLDER_TYPE", d("android.media.metadata.BT_FOLDER_TYPE"));
            aVar.a(bundle);
        }
        this.g = aVar.a();
        return this.g;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.b);
    }

    public Bundle b() {
        return this.b;
    }

    public static MediaMetadataCompat a(Object obj) {
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        d.a(obj, obtain, 0);
        obtain.setDataPosition(0);
        MediaMetadataCompat createFromParcel = CREATOR.createFromParcel(obtain);
        obtain.recycle();
        createFromParcel.f = obj;
        return createFromParcel;
    }

    public Object c() {
        if (this.f != null || Build.VERSION.SDK_INT < 21) {
            return this.f;
        }
        Parcel obtain = Parcel.obtain();
        writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        this.f = d.a(obtain);
        obtain.recycle();
        return this.f;
    }

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Bundle f353a;

        public a() {
            this.f353a = new Bundle();
        }

        public a(MediaMetadataCompat mediaMetadataCompat) {
            this.f353a = new Bundle(mediaMetadataCompat.b);
        }

        @RestrictTo
        public a(MediaMetadataCompat mediaMetadataCompat, int i) {
            this(mediaMetadataCompat);
            for (String str : this.f353a.keySet()) {
                Object obj = this.f353a.get(str);
                if (obj != null && (obj instanceof Bitmap)) {
                    Bitmap bitmap = (Bitmap) obj;
                    if (bitmap.getHeight() > i || bitmap.getWidth() > i) {
                        a(str, a(bitmap, i));
                    } else if (Build.VERSION.SDK_INT >= 14 && (str.equals("android.media.metadata.ART") || str.equals("android.media.metadata.ALBUM_ART"))) {
                        a(str, bitmap.copy(bitmap.getConfig(), false));
                    }
                }
            }
        }

        public a a(String str, String str2) {
            if (MediaMetadataCompat.f352a.containsKey(str) && MediaMetadataCompat.f352a.get(str).intValue() != 1) {
                throw new IllegalArgumentException("The " + str + " key cannot be used to put a String");
            }
            this.f353a.putCharSequence(str, str2);
            return this;
        }

        public a a(String str, long j) {
            if (MediaMetadataCompat.f352a.containsKey(str) && MediaMetadataCompat.f352a.get(str).intValue() != 0) {
                throw new IllegalArgumentException("The " + str + " key cannot be used to put a long");
            }
            this.f353a.putLong(str, j);
            return this;
        }

        public a a(String str, Bitmap bitmap) {
            if (MediaMetadataCompat.f352a.containsKey(str) && MediaMetadataCompat.f352a.get(str).intValue() != 2) {
                throw new IllegalArgumentException("The " + str + " key cannot be used to put a Bitmap");
            }
            this.f353a.putParcelable(str, bitmap);
            return this;
        }

        public MediaMetadataCompat a() {
            return new MediaMetadataCompat(this.f353a);
        }

        private Bitmap a(Bitmap bitmap, int i) {
            float f = i;
            float min = Math.min(f / bitmap.getWidth(), f / bitmap.getHeight());
            return Bitmap.createScaledBitmap(bitmap, (int) (min * bitmap.getWidth()), (int) (bitmap.getHeight() * min), true);
        }
    }
}
