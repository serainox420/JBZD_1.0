package com.google.android.gms.games.video;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzc;
/* loaded from: classes2.dex */
public final class VideoEntity extends zza implements Video {
    public static final Parcelable.Creator<VideoEntity> CREATOR = new VideoEntityCreator();
    private final long zzLp;
    private final String zzRg;
    private final int zzaEG;
    private final String zzbgd;
    private final long zzbge;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoEntity(int i, String str, long j, long j2, String str2) {
        this.zzaEG = i;
        this.zzbgd = str;
        this.zzbge = j;
        this.zzLp = j2;
        this.zzRg = str2;
    }

    public VideoEntity(Video video) {
        this.zzaEG = video.getDuration();
        this.zzbgd = video.zzGE();
        this.zzbge = video.getFileSize();
        this.zzLp = video.getStartTime();
        this.zzRg = video.getPackageName();
        zzc.zzt(this.zzbgd);
        zzc.zzt(this.zzRg);
    }

    static int zza(Video video) {
        return zzaa.hashCode(Integer.valueOf(video.getDuration()), video.zzGE(), Long.valueOf(video.getFileSize()), Long.valueOf(video.getStartTime()), video.getPackageName());
    }

    static boolean zza(Video video, Object obj) {
        if (!(obj instanceof Video)) {
            return false;
        }
        if (video == obj) {
            return true;
        }
        Video video2 = (Video) obj;
        return zzaa.equal(Integer.valueOf(video2.getDuration()), Integer.valueOf(video.getDuration())) && zzaa.equal(video2.zzGE(), video.zzGE()) && zzaa.equal(Long.valueOf(video2.getFileSize()), Long.valueOf(video.getFileSize())) && zzaa.equal(Long.valueOf(video2.getStartTime()), Long.valueOf(video.getStartTime())) && zzaa.equal(video2.getPackageName(), video.getPackageName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(Video video) {
        return zzaa.zzv(video).zzg("Duration", Integer.valueOf(video.getDuration())).zzg("File path", video.zzGE()).zzg("File size", Long.valueOf(video.getFileSize())).zzg("Start time", Long.valueOf(video.getStartTime())).zzg("Package name", video.getPackageName()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    @Override // com.google.android.gms.games.video.Video
    public int getDuration() {
        return this.zzaEG;
    }

    @Override // com.google.android.gms.games.video.Video
    public long getFileSize() {
        return this.zzbge;
    }

    @Override // com.google.android.gms.games.video.Video
    public String getPackageName() {
        return this.zzRg;
    }

    @Override // com.google.android.gms.games.video.Video
    public long getStartTime() {
        return this.zzLp;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        VideoEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.video.Video
    public String zzGE() {
        return this.zzbgd;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzGJ */
    public Video mo520freeze() {
        return this;
    }
}
