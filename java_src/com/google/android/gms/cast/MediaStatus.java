package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.internal.zzyr;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class MediaStatus extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final long COMMAND_PAUSE = 1;
    public static final long COMMAND_SEEK = 2;
    public static final long COMMAND_SET_VOLUME = 4;
    public static final long COMMAND_SKIP_BACKWARD = 32;
    public static final long COMMAND_SKIP_FORWARD = 16;
    public static final long COMMAND_TOGGLE_MUTE = 8;
    public static final Parcelable.Creator<MediaStatus> CREATOR = new zzl();
    public static final int IDLE_REASON_CANCELED = 2;
    public static final int IDLE_REASON_ERROR = 4;
    public static final int IDLE_REASON_FINISHED = 1;
    public static final int IDLE_REASON_INTERRUPTED = 3;
    public static final int IDLE_REASON_NONE = 0;
    public static final int PLAYER_STATE_BUFFERING = 4;
    public static final int PLAYER_STATE_IDLE = 1;
    public static final int PLAYER_STATE_PAUSED = 3;
    public static final int PLAYER_STATE_PLAYING = 2;
    public static final int PLAYER_STATE_UNKNOWN = 0;
    public static final int REPEAT_MODE_REPEAT_ALL = 1;
    public static final int REPEAT_MODE_REPEAT_ALL_AND_SHUFFLE = 3;
    public static final int REPEAT_MODE_REPEAT_OFF = 0;
    public static final int REPEAT_MODE_REPEAT_SINGLE = 2;
    String zzamN;
    private JSONObject zzamO;
    private long[] zzaoE;
    private long zzaoG;
    private int zzaoH;
    private double zzaoI;
    private int zzaoJ;
    private int zzaoK;
    private long zzaoL;
    long zzaoM;
    private double zzaoN;
    private boolean zzaoO;
    private int zzaoP;
    private int zzaoQ;
    int zzaoR;
    final ArrayList<MediaQueueItem> zzaoS;
    private boolean zzaoT;
    private AdBreakStatus zzaoU;
    private VideoInfo zzaoV;
    private final SparseArray<Integer> zzaoW;
    private MediaInfo zzaoq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaStatus(MediaInfo mediaInfo, long j, int i, double d, int i2, int i3, long j2, long j3, double d2, boolean z, long[] jArr, int i4, int i5, String str, int i6, List<MediaQueueItem> list, boolean z2, AdBreakStatus adBreakStatus, VideoInfo videoInfo) {
        this.zzaoS = new ArrayList<>();
        this.zzaoW = new SparseArray<>();
        this.zzaoq = mediaInfo;
        this.zzaoG = j;
        this.zzaoH = i;
        this.zzaoI = d;
        this.zzaoJ = i2;
        this.zzaoK = i3;
        this.zzaoL = j2;
        this.zzaoM = j3;
        this.zzaoN = d2;
        this.zzaoO = z;
        this.zzaoE = jArr;
        this.zzaoP = i4;
        this.zzaoQ = i5;
        this.zzamN = str;
        if (this.zzamN != null) {
            try {
                this.zzamO = new JSONObject(this.zzamN);
            } catch (JSONException e) {
                this.zzamO = null;
                this.zzamN = null;
            }
        } else {
            this.zzamO = null;
        }
        this.zzaoR = i6;
        if (list != null && !list.isEmpty()) {
            zza((MediaQueueItem[]) list.toArray(new MediaQueueItem[list.size()]));
        }
        this.zzaoT = z2;
        this.zzaoU = adBreakStatus;
        this.zzaoV = videoInfo;
    }

    public MediaStatus(JSONObject jSONObject) throws JSONException {
        this(null, 0L, 0, 0.0d, 0, 0, 0L, 0L, 0.0d, false, null, 0, 0, null, 0, null, false, null, null);
        zza(jSONObject, 0);
    }

    private void zza(MediaQueueItem[] mediaQueueItemArr) {
        this.zzaoS.clear();
        this.zzaoW.clear();
        for (int i = 0; i < mediaQueueItemArr.length; i++) {
            MediaQueueItem mediaQueueItem = mediaQueueItemArr[i];
            this.zzaoS.add(mediaQueueItem);
            this.zzaoW.put(mediaQueueItem.getItemId(), Integer.valueOf(i));
        }
    }

    private boolean zza(MediaStatus mediaStatus) {
        return this.zzamO == null || mediaStatus.zzamO == null || zzq.zze(this.zzamO, mediaStatus.zzamO);
    }

    private boolean zzf(int i, int i2, int i3, int i4) {
        if (i != 1) {
            return false;
        }
        switch (i2) {
            case 1:
            case 3:
                return i3 == 0;
            case 2:
                return i4 != 2;
            default:
                return true;
        }
    }

    private void zzsz() {
        this.zzaoR = 0;
        this.zzaoS.clear();
        this.zzaoW.clear();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaStatus)) {
            return false;
        }
        MediaStatus mediaStatus = (MediaStatus) obj;
        if ((this.zzamO == null) != (mediaStatus.zzamO == null)) {
            return false;
        }
        return this.zzaoG == mediaStatus.zzaoG && this.zzaoH == mediaStatus.zzaoH && this.zzaoI == mediaStatus.zzaoI && this.zzaoJ == mediaStatus.zzaoJ && this.zzaoK == mediaStatus.zzaoK && this.zzaoL == mediaStatus.zzaoL && this.zzaoN == mediaStatus.zzaoN && this.zzaoO == mediaStatus.zzaoO && this.zzaoP == mediaStatus.zzaoP && this.zzaoQ == mediaStatus.zzaoQ && this.zzaoR == mediaStatus.zzaoR && Arrays.equals(this.zzaoE, mediaStatus.zzaoE) && zzyr.zza(Long.valueOf(this.zzaoM), Long.valueOf(mediaStatus.zzaoM)) && zzyr.zza(this.zzaoS, mediaStatus.zzaoS) && zzyr.zza(this.zzaoq, mediaStatus.zzaoq) && zza(mediaStatus) && this.zzaoT == mediaStatus.isPlayingAd();
    }

    public long[] getActiveTrackIds() {
        return this.zzaoE;
    }

    public AdBreakStatus getAdBreakStatus() {
        return this.zzaoU;
    }

    public AdBreakInfo getCurrentAdBreak() {
        if (this.zzaoU == null || this.zzaoq == null) {
            return null;
        }
        String breakId = this.zzaoU.getBreakId();
        if (TextUtils.isEmpty(breakId)) {
            return null;
        }
        List<AdBreakInfo> adBreaks = this.zzaoq.getAdBreaks();
        if (adBreaks == null || adBreaks.isEmpty()) {
            return null;
        }
        for (AdBreakInfo adBreakInfo : adBreaks) {
            if (breakId.equals(adBreakInfo.getId())) {
                return adBreakInfo;
            }
        }
        return null;
    }

    public AdBreakClipInfo getCurrentAdBreakClip() {
        if (this.zzaoU == null || this.zzaoq == null) {
            return null;
        }
        String breakClipId = this.zzaoU.getBreakClipId();
        if (TextUtils.isEmpty(breakClipId)) {
            return null;
        }
        List<AdBreakClipInfo> adBreakClips = this.zzaoq.getAdBreakClips();
        if (adBreakClips == null || adBreakClips.isEmpty()) {
            return null;
        }
        for (AdBreakClipInfo adBreakClipInfo : adBreakClips) {
            if (breakClipId.equals(adBreakClipInfo.getId())) {
                return adBreakClipInfo;
            }
        }
        return null;
    }

    public int getCurrentItemId() {
        return this.zzaoH;
    }

    public JSONObject getCustomData() {
        return this.zzamO;
    }

    public int getIdleReason() {
        return this.zzaoK;
    }

    public Integer getIndexById(int i) {
        return this.zzaoW.get(i);
    }

    public MediaQueueItem getItemById(int i) {
        Integer num = this.zzaoW.get(i);
        if (num == null) {
            return null;
        }
        return this.zzaoS.get(num.intValue());
    }

    public MediaQueueItem getItemByIndex(int i) {
        if (i < 0 || i >= this.zzaoS.size()) {
            return null;
        }
        return this.zzaoS.get(i);
    }

    public int getLoadingItemId() {
        return this.zzaoP;
    }

    public MediaInfo getMediaInfo() {
        return this.zzaoq;
    }

    public double getPlaybackRate() {
        return this.zzaoI;
    }

    public int getPlayerState() {
        return this.zzaoJ;
    }

    public int getPreloadedItemId() {
        return this.zzaoQ;
    }

    public MediaQueueItem getQueueItem(int i) {
        return getItemByIndex(i);
    }

    public MediaQueueItem getQueueItemById(int i) {
        return getItemById(i);
    }

    public int getQueueItemCount() {
        return this.zzaoS.size();
    }

    public List<MediaQueueItem> getQueueItems() {
        return this.zzaoS;
    }

    public int getQueueRepeatMode() {
        return this.zzaoR;
    }

    public long getStreamPosition() {
        return this.zzaoL;
    }

    public double getStreamVolume() {
        return this.zzaoN;
    }

    public VideoInfo getVideoInfo() {
        return this.zzaoV;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzaoq, Long.valueOf(this.zzaoG), Integer.valueOf(this.zzaoH), Double.valueOf(this.zzaoI), Integer.valueOf(this.zzaoJ), Integer.valueOf(this.zzaoK), Long.valueOf(this.zzaoL), Long.valueOf(this.zzaoM), Double.valueOf(this.zzaoN), Boolean.valueOf(this.zzaoO), Integer.valueOf(Arrays.hashCode(this.zzaoE)), Integer.valueOf(this.zzaoP), Integer.valueOf(this.zzaoQ), String.valueOf(this.zzamO), Integer.valueOf(this.zzaoR), this.zzaoS, Boolean.valueOf(this.zzaoT));
    }

    public boolean isMediaCommandSupported(long j) {
        return (this.zzaoM & j) != 0;
    }

    public boolean isMute() {
        return this.zzaoO;
    }

    public boolean isPlayingAd() {
        return this.zzaoT;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        this.zzamN = this.zzamO == null ? null : this.zzamO.toString();
        zzl.zza(this, parcel, i);
    }

    public int zza(JSONObject jSONObject, int i) throws JSONException {
        int i2;
        boolean z;
        int i3;
        int i4 = 2;
        boolean z2 = true;
        long j = jSONObject.getLong("mediaSessionId");
        if (j != this.zzaoG) {
            this.zzaoG = j;
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (jSONObject.has("playerState")) {
            String string = jSONObject.getString("playerState");
            int i5 = string.equals("IDLE") ? 1 : string.equals("PLAYING") ? 2 : string.equals("PAUSED") ? 3 : string.equals("BUFFERING") ? 4 : 0;
            if (i5 != this.zzaoJ) {
                this.zzaoJ = i5;
                i2 |= 2;
            }
            if (i5 == 1 && jSONObject.has("idleReason")) {
                String string2 = jSONObject.getString("idleReason");
                if (!string2.equals("CANCELLED")) {
                    i4 = string2.equals("INTERRUPTED") ? 3 : string2.equals("FINISHED") ? 1 : string2.equals("ERROR") ? 4 : 0;
                }
                if (i4 != this.zzaoK) {
                    this.zzaoK = i4;
                    i2 |= 2;
                }
            }
        }
        if (jSONObject.has("playbackRate")) {
            double d = jSONObject.getDouble("playbackRate");
            if (this.zzaoI != d) {
                this.zzaoI = d;
                i2 |= 2;
            }
        }
        if (jSONObject.has("currentTime") && (i & 2) == 0) {
            long zzf = zzyr.zzf(jSONObject.getDouble("currentTime"));
            if (zzf != this.zzaoL) {
                this.zzaoL = zzf;
                i2 |= 2;
            }
        }
        if (jSONObject.has("supportedMediaCommands")) {
            long j2 = jSONObject.getLong("supportedMediaCommands");
            if (j2 != this.zzaoM) {
                this.zzaoM = j2;
                i2 |= 2;
            }
        }
        if (jSONObject.has("volume") && (i & 1) == 0) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("volume");
            double d2 = jSONObject2.getDouble("level");
            if (d2 != this.zzaoN) {
                this.zzaoN = d2;
                i2 |= 2;
            }
            boolean z3 = jSONObject2.getBoolean("muted");
            if (z3 != this.zzaoO) {
                this.zzaoO = z3;
                i2 |= 2;
            }
        }
        long[] jArr = null;
        if (jSONObject.has("activeTrackIds")) {
            JSONArray jSONArray = jSONObject.getJSONArray("activeTrackIds");
            int length = jSONArray.length();
            jArr = new long[length];
            for (int i6 = 0; i6 < length; i6++) {
                jArr[i6] = jSONArray.getLong(i6);
            }
            if (this.zzaoE == null) {
                z = true;
            } else if (this.zzaoE.length == length) {
                int i7 = 0;
                while (true) {
                    if (i7 >= length) {
                        z = false;
                        break;
                    } else if (this.zzaoE[i7] != jArr[i7]) {
                        z = true;
                        break;
                    } else {
                        i7++;
                    }
                }
            } else {
                z = true;
            }
            if (z) {
                this.zzaoE = jArr;
            }
        } else {
            z = this.zzaoE != null;
        }
        if (z) {
            this.zzaoE = jArr;
            i2 |= 2;
        }
        if (jSONObject.has("customData")) {
            this.zzamO = jSONObject.getJSONObject("customData");
            this.zzamN = null;
            i2 |= 2;
        }
        if (jSONObject.has(ShareConstants.WEB_DIALOG_PARAM_MEDIA)) {
            JSONObject jSONObject3 = jSONObject.getJSONObject(ShareConstants.WEB_DIALOG_PARAM_MEDIA);
            MediaInfo mediaInfo = new MediaInfo(jSONObject3);
            if (this.zzaoq == null || (this.zzaoq != null && !this.zzaoq.equals(mediaInfo))) {
                this.zzaoq = mediaInfo;
                i2 |= 2;
            }
            if (jSONObject3.has("metadata")) {
                i2 |= 4;
            }
        }
        if (jSONObject.has("currentItemId") && this.zzaoH != (i3 = jSONObject.getInt("currentItemId"))) {
            this.zzaoH = i3;
            i2 |= 2;
        }
        int optInt = jSONObject.optInt("preloadedItemId", 0);
        if (this.zzaoQ != optInt) {
            this.zzaoQ = optInt;
            i2 |= 16;
        }
        int optInt2 = jSONObject.optInt("loadingItemId", 0);
        if (this.zzaoP != optInt2) {
            this.zzaoP = optInt2;
            i2 |= 2;
        }
        if (zzf(this.zzaoJ, this.zzaoK, this.zzaoP, this.zzaoq == null ? -1 : this.zzaoq.getStreamType())) {
            this.zzaoH = 0;
            this.zzaoP = 0;
            this.zzaoQ = 0;
            if (!this.zzaoS.isEmpty()) {
                zzsz();
                i2 |= 8;
            }
        } else if (zzp(jSONObject)) {
            i2 |= 8;
        }
        AdBreakStatus zzl = AdBreakStatus.zzl(jSONObject.optJSONObject("breakStatus"));
        if ((this.zzaoU == null && zzl != null) || (this.zzaoU != null && !this.zzaoU.equals(zzl))) {
            if (zzl == null) {
                z2 = false;
            }
            zzam(z2);
            this.zzaoU = zzl;
            i2 |= 32;
        }
        VideoInfo zzq = VideoInfo.zzq(jSONObject.optJSONObject("videoInfo"));
        if ((this.zzaoV == null && zzq != null) || (this.zzaoV != null && !this.zzaoV.equals(zzq))) {
            this.zzaoV = zzq;
            i2 |= 64;
        }
        if (!jSONObject.has("breakInfo") || this.zzaoq == null) {
            return i2;
        }
        this.zzaoq.zzm(jSONObject.getJSONObject("breakInfo"));
        return i2 | 2;
    }

    public void zzam(boolean z) {
        this.zzaoT = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    boolean zzp(JSONObject jSONObject) throws JSONException {
        boolean z;
        boolean z2;
        int i = 2;
        boolean z3 = true;
        if (jSONObject.has("repeatMode")) {
            int i2 = this.zzaoR;
            String string = jSONObject.getString("repeatMode");
            char c = 65535;
            switch (string.hashCode()) {
                case -1118317585:
                    if (string.equals("REPEAT_ALL_AND_SHUFFLE")) {
                        c = 3;
                        break;
                    }
                    break;
                case -962896020:
                    if (string.equals("REPEAT_SINGLE")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1645938909:
                    if (string.equals("REPEAT_ALL")) {
                        c = 1;
                        break;
                    }
                    break;
                case 1645952171:
                    if (string.equals("REPEAT_OFF")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    i = 0;
                    break;
                case 1:
                    i = 1;
                    break;
                case 2:
                    break;
                case 3:
                    i = 3;
                    break;
                default:
                    i = i2;
                    break;
            }
            if (this.zzaoR != i) {
                this.zzaoR = i;
                z = true;
                if (jSONObject.has("items")) {
                    return z;
                }
                JSONArray jSONArray = jSONObject.getJSONArray("items");
                int length = jSONArray.length();
                SparseArray sparseArray = new SparseArray();
                for (int i3 = 0; i3 < length; i3++) {
                    sparseArray.put(i3, Integer.valueOf(jSONArray.getJSONObject(i3).getInt("itemId")));
                }
                MediaQueueItem[] mediaQueueItemArr = new MediaQueueItem[length];
                int i4 = 0;
                boolean z4 = z;
                while (i4 < length) {
                    Integer num = (Integer) sparseArray.get(i4);
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i4);
                    MediaQueueItem itemById = getItemById(num.intValue());
                    if (itemById != null) {
                        boolean zzo = z4 | itemById.zzo(jSONObject2);
                        mediaQueueItemArr[i4] = itemById;
                        z2 = i4 != getIndexById(num.intValue()).intValue() ? true : zzo;
                    } else if (num.intValue() == this.zzaoH) {
                        mediaQueueItemArr[i4] = new MediaQueueItem.Builder(this.zzaoq).build();
                        mediaQueueItemArr[i4].zzo(jSONObject2);
                        z2 = true;
                    } else {
                        mediaQueueItemArr[i4] = new MediaQueueItem(jSONObject2);
                        z2 = true;
                    }
                    i4++;
                    z4 = z2;
                }
                if (this.zzaoS.size() == length) {
                    z3 = z4;
                }
                zza(mediaQueueItemArr);
                return z3;
            }
        }
        z = false;
        if (jSONObject.has("items")) {
        }
    }

    public long zzsy() {
        return this.zzaoG;
    }
}
