package com.google.android.gms.games.video;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.loopme.debugging.Params;
import com.mopub.mobileads.VastIconXmlManager;
/* loaded from: classes2.dex */
public final class VideoRef extends zzc implements Video {
    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.games.video.Video
    public int getDuration() {
        return getInteger(VastIconXmlManager.DURATION);
    }

    @Override // com.google.android.gms.games.video.Video
    public long getFileSize() {
        return getLong("filesize");
    }

    @Override // com.google.android.gms.games.video.Video
    public String getPackageName() {
        return getString(Params.PACKAGE_ID);
    }

    @Override // com.google.android.gms.games.video.Video
    public long getStartTime() {
        return getLong("start_time");
    }

    public String toString() {
        return VideoEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((VideoEntity) ((Video) mo520freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.video.Video
    public String zzGE() {
        return getString("filepath");
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzGJ */
    public Video mo520freeze() {
        return new VideoEntity(this);
    }
}
