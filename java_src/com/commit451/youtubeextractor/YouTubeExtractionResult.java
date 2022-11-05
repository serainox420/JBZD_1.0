package com.commit451.youtubeextractor;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class YouTubeExtractionResult implements Parcelable {
    public static final Parcelable.Creator<YouTubeExtractionResult> CREATOR = new Parcelable.Creator<YouTubeExtractionResult>() { // from class: com.commit451.youtubeextractor.YouTubeExtractionResult.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public YouTubeExtractionResult createFromParcel(Parcel parcel) {
            return new YouTubeExtractionResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public YouTubeExtractionResult[] newArray(int i) {
            return new YouTubeExtractionResult[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private Uri f1999a;
    private Uri b;
    private Uri c;
    private Uri d;
    private Uri e;
    private Uri f;
    private Uri g;
    private Uri h;

    /* JADX INFO: Access modifiers changed from: protected */
    public YouTubeExtractionResult() {
    }

    public Uri a() {
        return this.f1999a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public YouTubeExtractionResult a(Uri uri) {
        this.f1999a = uri;
        return this;
    }

    public Uri b() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public YouTubeExtractionResult b(Uri uri) {
        this.b = uri;
        return this;
    }

    public Uri c() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public YouTubeExtractionResult c(Uri uri) {
        this.c = uri;
        return this;
    }

    public Uri d() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public YouTubeExtractionResult d(Uri uri) {
        this.d = uri;
        return this;
    }

    public Uri e() {
        Uri c = c();
        if (c == null) {
            Uri b = b();
            if (b == null) {
                Uri a2 = a();
                if (a2 == null) {
                    Uri d = d();
                    if (d == null) {
                        return null;
                    }
                    return d;
                }
                return a2;
            }
            return b;
        }
        return c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public YouTubeExtractionResult e(Uri uri) {
        this.e = uri;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public YouTubeExtractionResult f(Uri uri) {
        this.f = uri;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public YouTubeExtractionResult g(Uri uri) {
        this.g = uri;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public YouTubeExtractionResult h(Uri uri) {
        this.h = uri;
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f1999a, i);
        parcel.writeParcelable(this.b, i);
        parcel.writeParcelable(this.c, i);
        parcel.writeParcelable(this.d, i);
        parcel.writeParcelable(this.e, i);
        parcel.writeParcelable(this.f, i);
        parcel.writeParcelable(this.g, i);
        parcel.writeParcelable(this.h, i);
    }

    protected YouTubeExtractionResult(Parcel parcel) {
        this.f1999a = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.b = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.c = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.d = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.e = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.g = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.h = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
    }
}
