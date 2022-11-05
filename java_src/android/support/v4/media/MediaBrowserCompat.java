package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ResultReceiver;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class MediaBrowserCompat {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f330a = Log.isLoggable("MediaBrowserCompat", 3);

    /* loaded from: classes.dex */
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new Parcelable.Creator<MediaItem>() { // from class: android.support.v4.media.MediaBrowserCompat.MediaItem.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public MediaItem[] newArray(int i) {
                return new MediaItem[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final int f331a;
        private final MediaDescriptionCompat b;

        MediaItem(Parcel parcel) {
            this.f331a = parcel.readInt();
            this.b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f331a);
            this.b.writeToParcel(parcel, i);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("MediaItem{");
            sb.append("mFlags=").append(this.f331a);
            sb.append(", mDescription=").append(this.b);
            sb.append('}');
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public static abstract class a {
        public void a(MediaItem mediaItem) {
        }

        public void a(String str) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class b {
        public void a(String str, Bundle bundle, List<MediaItem> list) {
        }

        public void a(String str, Bundle bundle) {
        }
    }

    /* loaded from: classes.dex */
    private static class ItemReceiver extends ResultReceiver {
        private final String d;
        private final a e;

        @Override // android.support.v4.os.ResultReceiver
        protected void a(int i, Bundle bundle) {
            if (bundle != null) {
                bundle.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            }
            if (i != 0 || bundle == null || !bundle.containsKey("media_item")) {
                this.e.a(this.d);
                return;
            }
            Parcelable parcelable = bundle.getParcelable("media_item");
            if (parcelable == null || (parcelable instanceof MediaItem)) {
                this.e.a((MediaItem) parcelable);
            } else {
                this.e.a(this.d);
            }
        }
    }

    /* loaded from: classes.dex */
    private static class SearchResultReceiver extends ResultReceiver {
        private final String d;
        private final Bundle e;
        private final b f;

        @Override // android.support.v4.os.ResultReceiver
        protected void a(int i, Bundle bundle) {
            if (i != 0 || bundle == null || !bundle.containsKey("search_results")) {
                this.f.a(this.d, this.e);
                return;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
            ArrayList arrayList = null;
            if (parcelableArray != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Parcelable parcelable : parcelableArray) {
                    arrayList2.add((MediaItem) parcelable);
                }
                arrayList = arrayList2;
            }
            this.f.a(this.d, this.e, arrayList);
        }
    }
}
