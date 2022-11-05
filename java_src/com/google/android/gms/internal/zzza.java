package com.google.android.gms.internal;

import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.RemoteMediaPlayer;
import com.google.android.gms.cast.TextTrackStyle;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class zzza extends zzyo {
    public static final String NAMESPACE = zzyr.zzcR("com.google.cast.media");
    private final List<zzzd> zzavb;
    private long zzawJ;
    private MediaStatus zzawK;
    private zza zzawL;
    private final zzzd zzawM;
    private final zzzd zzawN;
    private final zzzd zzawO;
    private final zzzd zzawP;
    private final zzzd zzawQ;
    private final zzzd zzawR;
    private final zzzd zzawS;
    private final zzzd zzawT;
    private final zzzd zzawU;
    private final zzzd zzawV;
    private final zzzd zzawW;
    private final zzzd zzawX;
    private final zzzd zzawY;
    private final zzzd zzawZ;

    /* loaded from: classes2.dex */
    public interface zza {
        void onAdBreakStatusUpdated();

        void onMetadataUpdated();

        void onPreloadStatusUpdated();

        void onQueueStatusUpdated();

        void onStatusUpdated();
    }

    /* loaded from: classes2.dex */
    public static class zzb extends Exception {
    }

    public zzza(String str) {
        super(NAMESPACE, com.google.android.gms.common.util.zzi.zzzc(), "MediaControlChannel", str, 1000L);
        this.zzawM = new zzzd(this.zzuP, 86400000L);
        this.zzawN = new zzzd(this.zzuP, 86400000L);
        this.zzawO = new zzzd(this.zzuP, 86400000L);
        this.zzawP = new zzzd(this.zzuP, 86400000L);
        this.zzawQ = new zzzd(this.zzuP, 86400000L);
        this.zzawR = new zzzd(this.zzuP, 86400000L);
        this.zzawS = new zzzd(this.zzuP, 86400000L);
        this.zzawT = new zzzd(this.zzuP, 86400000L);
        this.zzawU = new zzzd(this.zzuP, 86400000L);
        this.zzawV = new zzzd(this.zzuP, 86400000L);
        this.zzawW = new zzzd(this.zzuP, 86400000L);
        this.zzawX = new zzzd(this.zzuP, 86400000L);
        this.zzawY = new zzzd(this.zzuP, 86400000L);
        this.zzawZ = new zzzd(this.zzuP, 86400000L);
        this.zzavb = new ArrayList();
        this.zzavb.add(this.zzawM);
        this.zzavb.add(this.zzawN);
        this.zzavb.add(this.zzawO);
        this.zzavb.add(this.zzawP);
        this.zzavb.add(this.zzawQ);
        this.zzavb.add(this.zzawR);
        this.zzavb.add(this.zzawS);
        this.zzavb.add(this.zzawT);
        this.zzavb.add(this.zzawU);
        this.zzavb.add(this.zzawV);
        this.zzavb.add(this.zzawW);
        this.zzavb.add(this.zzawX);
        this.zzavb.add(this.zzawY);
        this.zzavb.add(this.zzawZ);
        zzuN();
    }

    private void onAdBreakStatusUpdated() {
        if (this.zzawL != null) {
            this.zzawL.onAdBreakStatusUpdated();
        }
    }

    private void onMetadataUpdated() {
        if (this.zzawL != null) {
            this.zzawL.onMetadataUpdated();
        }
    }

    private void onPreloadStatusUpdated() {
        if (this.zzawL != null) {
            this.zzawL.onPreloadStatusUpdated();
        }
    }

    private void onQueueStatusUpdated() {
        if (this.zzawL != null) {
            this.zzawL.onQueueStatusUpdated();
        }
    }

    private void onStatusUpdated() {
        if (this.zzawL != null) {
            this.zzawL.onStatusUpdated();
        }
    }

    private long zza(double d, long j, long j2) {
        long elapsedRealtime = this.zzuP.elapsedRealtime() - this.zzawJ;
        if (elapsedRealtime < 0) {
            elapsedRealtime = 0;
        }
        if (elapsedRealtime == 0) {
            return j;
        }
        long j3 = ((long) (elapsedRealtime * d)) + j;
        if (j2 <= 0 || j3 <= j2) {
            j2 = j3 < 0 ? 0L : j3;
        }
        return j2;
    }

    private void zza(long j, JSONObject jSONObject) throws JSONException {
        int i;
        boolean z = true;
        boolean test = this.zzawM.test(j);
        boolean z2 = this.zzawQ.zzuP() && !this.zzawQ.test(j);
        if ((!this.zzawR.zzuP() || this.zzawR.test(j)) && (!this.zzawS.zzuP() || this.zzawS.test(j))) {
            z = false;
        }
        int i2 = z2 ? 2 : 0;
        if (z) {
            i2 |= 1;
        }
        if (test || this.zzawK == null) {
            this.zzawK = new MediaStatus(jSONObject);
            this.zzawJ = this.zzuP.elapsedRealtime();
            i = 127;
        } else {
            i = this.zzawK.zza(jSONObject, i2);
        }
        if ((i & 1) != 0) {
            this.zzawJ = this.zzuP.elapsedRealtime();
            onStatusUpdated();
        }
        if ((i & 2) != 0) {
            this.zzawJ = this.zzuP.elapsedRealtime();
            onStatusUpdated();
        }
        if ((i & 4) != 0) {
            onMetadataUpdated();
        }
        if ((i & 8) != 0) {
            onQueueStatusUpdated();
        }
        if ((i & 16) != 0) {
            onPreloadStatusUpdated();
        }
        if ((i & 32) != 0) {
            this.zzawJ = this.zzuP.elapsedRealtime();
            onAdBreakStatusUpdated();
        }
        if ((i & 64) != 0) {
            this.zzawJ = this.zzuP.elapsedRealtime();
            onStatusUpdated();
        }
        for (zzzd zzzdVar : this.zzavb) {
            zzzdVar.zzc(j, 0);
        }
    }

    private void zzuN() {
        this.zzawJ = 0L;
        this.zzawK = null;
        for (zzzd zzzdVar : this.zzavb) {
            zzzdVar.clear();
        }
    }

    public long getApproximateStreamPosition() {
        MediaInfo mediaInfo = getMediaInfo();
        if (mediaInfo == null || this.zzawJ == 0) {
            return 0L;
        }
        double playbackRate = this.zzawK.getPlaybackRate();
        long streamPosition = this.zzawK.getStreamPosition();
        return (playbackRate == 0.0d || this.zzawK.getPlayerState() != 2) ? streamPosition : zza(playbackRate, streamPosition, mediaInfo.getStreamDuration());
    }

    public MediaInfo getMediaInfo() {
        if (this.zzawK == null) {
            return null;
        }
        return this.zzawK.getMediaInfo();
    }

    public MediaStatus getMediaStatus() {
        return this.zzawK;
    }

    public long getStreamDuration() {
        MediaInfo mediaInfo = getMediaInfo();
        if (mediaInfo != null) {
            return mediaInfo.getStreamDuration();
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.zzyo
    protected boolean zzF(long j) {
        boolean z;
        for (zzzd zzzdVar : this.zzavb) {
            zzzdVar.zzd(j, RemoteMediaPlayer.STATUS_TIMED_OUT);
        }
        synchronized (zzzd.zzqS) {
            Iterator<zzzd> it = this.zzavb.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().zzuP()) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
        }
        return z;
    }

    public long zza(zzzc zzzcVar) throws IOException {
        JSONObject jSONObject = new JSONObject();
        long zzuA = zzuA();
        this.zzawT.zza(zzuA, zzzcVar);
        zzaq(true);
        try {
            jSONObject.put("requestId", zzuA);
            jSONObject.put("type", "GET_STATUS");
            if (this.zzawK != null) {
                jSONObject.put("mediaSessionId", this.zzawK.zzsy());
            }
        } catch (JSONException e) {
        }
        zza(jSONObject.toString(), zzuA, (String) null);
        return zzuA;
    }

    public long zza(zzzc zzzcVar, double d, JSONObject jSONObject) throws IOException, zzb, IllegalArgumentException {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            throw new IllegalArgumentException(new StringBuilder(41).append("Volume cannot be ").append(d).toString());
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzuA = zzuA();
        this.zzawR.zza(zzuA, zzzcVar);
        zzaq(true);
        try {
            jSONObject2.put("requestId", zzuA);
            jSONObject2.put("type", "SET_VOLUME");
            jSONObject2.put("mediaSessionId", zzsy());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("level", d);
            jSONObject2.put("volume", jSONObject3);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        zza(jSONObject2.toString(), zzuA, (String) null);
        return zzuA;
    }

    public long zza(zzzc zzzcVar, int i, long j, MediaQueueItem[] mediaQueueItemArr, int i2, Integer num, JSONObject jSONObject) throws IllegalArgumentException, IOException, zzb {
        if (j == -1 || j >= 0) {
            JSONObject jSONObject2 = new JSONObject();
            long zzuA = zzuA();
            this.zzawX.zza(zzuA, zzzcVar);
            zzaq(true);
            try {
                jSONObject2.put("requestId", zzuA);
                jSONObject2.put("type", "QUEUE_UPDATE");
                jSONObject2.put("mediaSessionId", zzsy());
                if (i != 0) {
                    jSONObject2.put("currentItemId", i);
                }
                if (i2 != 0) {
                    jSONObject2.put("jump", i2);
                }
                if (mediaQueueItemArr != null && mediaQueueItemArr.length > 0) {
                    JSONArray jSONArray = new JSONArray();
                    for (int i3 = 0; i3 < mediaQueueItemArr.length; i3++) {
                        jSONArray.put(i3, mediaQueueItemArr[i3].toJson());
                    }
                    jSONObject2.put("items", jSONArray);
                }
                if (num != null) {
                    switch (num.intValue()) {
                        case 0:
                            jSONObject2.put("repeatMode", "REPEAT_OFF");
                            break;
                        case 1:
                            jSONObject2.put("repeatMode", "REPEAT_ALL");
                            break;
                        case 2:
                            jSONObject2.put("repeatMode", "REPEAT_SINGLE");
                            break;
                        case 3:
                            jSONObject2.put("repeatMode", "REPEAT_ALL_AND_SHUFFLE");
                            break;
                    }
                }
                if (j != -1) {
                    jSONObject2.put("currentTime", zzyr.zzG(j));
                }
                if (jSONObject != null) {
                    jSONObject2.put("customData", jSONObject);
                }
            } catch (JSONException e) {
            }
            zza(jSONObject2.toString(), zzuA, (String) null);
            return zzuA;
        }
        throw new IllegalArgumentException(new StringBuilder(53).append("playPosition cannot be negative: ").append(j).toString());
    }

    public long zza(zzzc zzzcVar, long j, int i, JSONObject jSONObject) throws IOException, zzb {
        JSONObject jSONObject2 = new JSONObject();
        long zzuA = zzuA();
        this.zzawQ.zza(zzuA, zzzcVar);
        zzaq(true);
        try {
            jSONObject2.put("requestId", zzuA);
            jSONObject2.put("type", "SEEK");
            jSONObject2.put("mediaSessionId", zzsy());
            jSONObject2.put("currentTime", zzyr.zzG(j));
            if (i == 1) {
                jSONObject2.put("resumeState", "PLAYBACK_START");
            } else if (i == 2) {
                jSONObject2.put("resumeState", "PLAYBACK_PAUSE");
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        zza(jSONObject2.toString(), zzuA, (String) null);
        return zzuA;
    }

    public long zza(zzzc zzzcVar, MediaInfo mediaInfo, boolean z, long j, long[] jArr, JSONObject jSONObject) throws IOException {
        JSONObject jSONObject2 = new JSONObject();
        long zzuA = zzuA();
        this.zzawM.zza(zzuA, zzzcVar);
        zzaq(true);
        try {
            jSONObject2.put("requestId", zzuA);
            jSONObject2.put("type", "LOAD");
            jSONObject2.put(ShareConstants.WEB_DIALOG_PARAM_MEDIA, mediaInfo.toJson());
            jSONObject2.put(AudienceNetworkActivity.AUTOPLAY, z);
            jSONObject2.put("currentTime", zzyr.zzG(j));
            if (jArr != null) {
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < jArr.length; i++) {
                    jSONArray.put(i, jArr[i]);
                }
                jSONObject2.put("activeTrackIds", jSONArray);
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        zza(jSONObject2.toString(), zzuA, (String) null);
        return zzuA;
    }

    public long zza(zzzc zzzcVar, TextTrackStyle textTrackStyle) throws IOException, zzb {
        JSONObject jSONObject = new JSONObject();
        long zzuA = zzuA();
        this.zzawV.zza(zzuA, zzzcVar);
        zzaq(true);
        try {
            jSONObject.put("requestId", zzuA);
            jSONObject.put("type", "EDIT_TRACKS_INFO");
            if (textTrackStyle != null) {
                jSONObject.put("textTrackStyle", textTrackStyle.toJson());
            }
            jSONObject.put("mediaSessionId", zzsy());
        } catch (JSONException e) {
        }
        zza(jSONObject.toString(), zzuA, (String) null);
        return zzuA;
    }

    public long zza(zzzc zzzcVar, JSONObject jSONObject) throws IOException, zzb {
        JSONObject jSONObject2 = new JSONObject();
        long zzuA = zzuA();
        this.zzawN.zza(zzuA, zzzcVar);
        zzaq(true);
        try {
            jSONObject2.put("requestId", zzuA);
            jSONObject2.put("type", "PAUSE");
            jSONObject2.put("mediaSessionId", zzsy());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        zza(jSONObject2.toString(), zzuA, (String) null);
        return zzuA;
    }

    public long zza(zzzc zzzcVar, boolean z, JSONObject jSONObject) throws IOException, zzb {
        JSONObject jSONObject2 = new JSONObject();
        long zzuA = zzuA();
        this.zzawS.zza(zzuA, zzzcVar);
        zzaq(true);
        try {
            jSONObject2.put("requestId", zzuA);
            jSONObject2.put("type", "SET_VOLUME");
            jSONObject2.put("mediaSessionId", zzsy());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("muted", z);
            jSONObject2.put("volume", jSONObject3);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        zza(jSONObject2.toString(), zzuA, (String) null);
        return zzuA;
    }

    public long zza(zzzc zzzcVar, int[] iArr, int i, JSONObject jSONObject) throws IOException, zzb, IllegalArgumentException {
        if (iArr == null || iArr.length == 0) {
            throw new IllegalArgumentException("itemIdsToReorder must not be null or empty.");
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzuA = zzuA();
        this.zzawZ.zza(zzuA, zzzcVar);
        zzaq(true);
        try {
            jSONObject2.put("requestId", zzuA);
            jSONObject2.put("type", "QUEUE_REORDER");
            jSONObject2.put("mediaSessionId", zzsy());
            JSONArray jSONArray = new JSONArray();
            for (int i2 = 0; i2 < iArr.length; i2++) {
                jSONArray.put(i2, iArr[i2]);
            }
            jSONObject2.put("itemIds", jSONArray);
            if (i != 0) {
                jSONObject2.put("insertBefore", i);
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        zza(jSONObject2.toString(), zzuA, (String) null);
        return zzuA;
    }

    public long zza(zzzc zzzcVar, int[] iArr, JSONObject jSONObject) throws IOException, zzb, IllegalArgumentException {
        if (iArr == null || iArr.length == 0) {
            throw new IllegalArgumentException("itemIdsToRemove must not be null or empty.");
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzuA = zzuA();
        this.zzawY.zza(zzuA, zzzcVar);
        zzaq(true);
        try {
            jSONObject2.put("requestId", zzuA);
            jSONObject2.put("type", "QUEUE_REMOVE");
            jSONObject2.put("mediaSessionId", zzsy());
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < iArr.length; i++) {
                jSONArray.put(i, iArr[i]);
            }
            jSONObject2.put("itemIds", jSONArray);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        zza(jSONObject2.toString(), zzuA, (String) null);
        return zzuA;
    }

    public long zza(zzzc zzzcVar, long[] jArr) throws IOException, zzb {
        JSONObject jSONObject = new JSONObject();
        long zzuA = zzuA();
        this.zzawU.zza(zzuA, zzzcVar);
        zzaq(true);
        try {
            jSONObject.put("requestId", zzuA);
            jSONObject.put("type", "EDIT_TRACKS_INFO");
            jSONObject.put("mediaSessionId", zzsy());
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < jArr.length; i++) {
                jSONArray.put(i, jArr[i]);
            }
            jSONObject.put("activeTrackIds", jSONArray);
        } catch (JSONException e) {
        }
        zza(jSONObject.toString(), zzuA, (String) null);
        return zzuA;
    }

    public long zza(zzzc zzzcVar, MediaQueueItem[] mediaQueueItemArr, int i, int i2, int i3, long j, JSONObject jSONObject) throws IOException, zzb, IllegalArgumentException {
        if (mediaQueueItemArr == null || mediaQueueItemArr.length == 0) {
            throw new IllegalArgumentException("itemsToInsert must not be null or empty.");
        }
        if (i2 != 0 && i3 != -1) {
            throw new IllegalArgumentException("can not set both currentItemId and currentItemIndexInItemsToInsert");
        }
        if (i3 != -1 && (i3 < 0 || i3 >= mediaQueueItemArr.length)) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "currentItemIndexInItemsToInsert %d out of range [0, %d).", Integer.valueOf(i3), Integer.valueOf(mediaQueueItemArr.length)));
        }
        if (j != -1 && j < 0) {
            throw new IllegalArgumentException(new StringBuilder(54).append("playPosition can not be negative: ").append(j).toString());
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzuA = zzuA();
        this.zzawW.zza(zzuA, zzzcVar);
        zzaq(true);
        try {
            jSONObject2.put("requestId", zzuA);
            jSONObject2.put("type", "QUEUE_INSERT");
            jSONObject2.put("mediaSessionId", zzsy());
            JSONArray jSONArray = new JSONArray();
            for (int i4 = 0; i4 < mediaQueueItemArr.length; i4++) {
                jSONArray.put(i4, mediaQueueItemArr[i4].toJson());
            }
            jSONObject2.put("items", jSONArray);
            if (i != 0) {
                jSONObject2.put("insertBefore", i);
            }
            if (i2 != 0) {
                jSONObject2.put("currentItemId", i2);
            }
            if (i3 != -1) {
                jSONObject2.put("currentItemIndex", i3);
            }
            if (j != -1) {
                jSONObject2.put("currentTime", zzyr.zzG(j));
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        zza(jSONObject2.toString(), zzuA, (String) null);
        return zzuA;
    }

    public long zza(zzzc zzzcVar, MediaQueueItem[] mediaQueueItemArr, int i, int i2, long j, JSONObject jSONObject) throws IOException, IllegalArgumentException {
        if (mediaQueueItemArr == null || mediaQueueItemArr.length == 0) {
            throw new IllegalArgumentException("items must not be null or empty.");
        }
        if (i < 0 || i >= mediaQueueItemArr.length) {
            throw new IllegalArgumentException(new StringBuilder(31).append("Invalid startIndex: ").append(i).toString());
        }
        if (j != -1 && j < 0) {
            throw new IllegalArgumentException(new StringBuilder(54).append("playPosition can not be negative: ").append(j).toString());
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzuA = zzuA();
        this.zzawM.zza(zzuA, zzzcVar);
        zzaq(true);
        try {
            jSONObject2.put("requestId", zzuA);
            jSONObject2.put("type", "QUEUE_LOAD");
            JSONArray jSONArray = new JSONArray();
            for (int i3 = 0; i3 < mediaQueueItemArr.length; i3++) {
                jSONArray.put(i3, mediaQueueItemArr[i3].toJson());
            }
            jSONObject2.put("items", jSONArray);
            switch (i2) {
                case 0:
                    jSONObject2.put("repeatMode", "REPEAT_OFF");
                    break;
                case 1:
                    jSONObject2.put("repeatMode", "REPEAT_ALL");
                    break;
                case 2:
                    jSONObject2.put("repeatMode", "REPEAT_SINGLE");
                    break;
                case 3:
                    jSONObject2.put("repeatMode", "REPEAT_ALL_AND_SHUFFLE");
                    break;
                default:
                    throw new IllegalArgumentException(new StringBuilder(32).append("Invalid repeat mode: ").append(i2).toString());
            }
            jSONObject2.put("startIndex", i);
            if (j != -1) {
                jSONObject2.put("currentTime", zzyr.zzG(j));
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        zza(jSONObject2.toString(), zzuA, (String) null);
        return zzuA;
    }

    public void zza(zza zzaVar) {
        this.zzawL = zzaVar;
    }

    public long zzb(zzzc zzzcVar, JSONObject jSONObject) throws IOException, zzb {
        JSONObject jSONObject2 = new JSONObject();
        long zzuA = zzuA();
        this.zzawP.zza(zzuA, zzzcVar);
        zzaq(true);
        try {
            jSONObject2.put("requestId", zzuA);
            jSONObject2.put("type", "STOP");
            jSONObject2.put("mediaSessionId", zzsy());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        zza(jSONObject2.toString(), zzuA, (String) null);
        return zzuA;
    }

    @Override // com.google.android.gms.internal.zzyp
    public void zzb(long j, int i) {
        for (zzzd zzzdVar : this.zzavb) {
            zzzdVar.zzc(j, i);
        }
    }

    public long zzc(zzzc zzzcVar, JSONObject jSONObject) throws IOException, zzb {
        JSONObject jSONObject2 = new JSONObject();
        long zzuA = zzuA();
        this.zzawO.zza(zzuA, zzzcVar);
        zzaq(true);
        try {
            jSONObject2.put("requestId", zzuA);
            jSONObject2.put("type", "PLAY");
            jSONObject2.put("mediaSessionId", zzsy());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException e) {
        }
        zza(jSONObject2.toString(), zzuA, (String) null);
        return zzuA;
    }

    @Override // com.google.android.gms.internal.zzyp
    public final void zzcP(String str) {
        this.zzapV.zzb("message received: %s", str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("type");
            long optLong = jSONObject.optLong("requestId", -1L);
            char c = 65535;
            switch (string.hashCode()) {
                case -1830647528:
                    if (string.equals("LOAD_CANCELLED")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1125000185:
                    if (string.equals("INVALID_REQUEST")) {
                        c = 4;
                        break;
                    }
                    break;
                case -262628938:
                    if (string.equals("LOAD_FAILED")) {
                        c = 2;
                        break;
                    }
                    break;
                case 431600379:
                    if (string.equals("INVALID_PLAYER_STATE")) {
                        c = 1;
                        break;
                    }
                    break;
                case 823510221:
                    if (string.equals("MEDIA_STATUS")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    JSONArray jSONArray = jSONObject.getJSONArray("status");
                    if (jSONArray.length() > 0) {
                        zza(optLong, jSONArray.getJSONObject(0));
                        return;
                    }
                    this.zzawK = null;
                    onStatusUpdated();
                    onMetadataUpdated();
                    onQueueStatusUpdated();
                    onPreloadStatusUpdated();
                    this.zzawT.zzc(optLong, 0);
                    return;
                case 1:
                    this.zzapV.zzf("received unexpected error: Invalid Player State.", new Object[0]);
                    JSONObject optJSONObject = jSONObject.optJSONObject("customData");
                    for (zzzd zzzdVar : this.zzavb) {
                        zzzdVar.zzc(optLong, 2100, optJSONObject);
                    }
                    return;
                case 2:
                    this.zzawM.zzc(optLong, 2100, jSONObject.optJSONObject("customData"));
                    return;
                case 3:
                    this.zzawM.zzc(optLong, RemoteMediaPlayer.STATUS_CANCELED, jSONObject.optJSONObject("customData"));
                    return;
                case 4:
                    this.zzapV.zzf("received unexpected error: Invalid Request.", new Object[0]);
                    JSONObject optJSONObject2 = jSONObject.optJSONObject("customData");
                    for (zzzd zzzdVar2 : this.zzavb) {
                        zzzdVar2.zzc(optLong, 2100, optJSONObject2);
                    }
                    return;
                default:
                    return;
            }
        } catch (JSONException e) {
            this.zzapV.zzf("Message is malformed (%s); ignoring: %s", e.getMessage(), str);
        }
    }

    public long zzsy() throws zzb {
        if (this.zzawK == null) {
            throw new zzb();
        }
        return this.zzawK.zzsy();
    }

    @Override // com.google.android.gms.internal.zzyo, com.google.android.gms.internal.zzyp
    public void zzuz() {
        super.zzuz();
        zzuN();
    }
}
