package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.R;
import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2.dex */
public class NotificationOptions extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final long SKIP_STEP_TEN_SECONDS_IN_MS = 10000;
    public static final long SKIP_STEP_THIRTY_SECONDS_IN_MS = 30000;
    private final List<String> zzarX;
    private final int[] zzarY;
    private final long zzarZ;
    private final int zzasA;
    private final int zzasB;
    private final String zzasa;
    private final int zzasb;
    private final int zzasc;
    private final int zzasd;
    private final int zzase;
    private final int zzasf;
    private final int zzasg;
    private final int zzash;
    private final int zzasi;
    private final int zzasj;
    private final int zzask;
    private final int zzasl;
    private final int zzasm;
    private final int zzasn;
    private final int zzaso;
    private final int zzasp;
    private final int zzasq;
    private final int zzasr;
    private final int zzass;
    private final int zzast;
    private final int zzasu;
    private final int zzasv;
    private final int zzasw;
    private final int zzasx;
    private final int zzasy;
    private final int zzasz;
    private static final List<String> zzarV = Arrays.asList(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK, MediaIntentReceiver.ACTION_STOP_CASTING);
    private static final int[] zzarW = {0, 1};
    public static final Parcelable.Creator<NotificationOptions> CREATOR = new zze();

    /* loaded from: classes2.dex */
    public static final class Builder {
        private String zzasa;
        private List<String> zzarX = NotificationOptions.zzarV;
        private int[] zzarY = NotificationOptions.zzarW;
        private int zzasb = R.drawable.cast_ic_notification_small_icon;
        private int zzasc = R.drawable.cast_ic_notification_stop_live_stream;
        private int zzasd = R.drawable.cast_ic_notification_pause;
        private int zzase = R.drawable.cast_ic_notification_play;
        private int zzasf = R.drawable.cast_ic_notification_skip_next;
        private int zzasg = R.drawable.cast_ic_notification_skip_prev;
        private int zzash = R.drawable.cast_ic_notification_forward;
        private int zzasi = R.drawable.cast_ic_notification_forward10;
        private int zzasj = R.drawable.cast_ic_notification_forward30;
        private int zzask = R.drawable.cast_ic_notification_rewind;
        private int zzasl = R.drawable.cast_ic_notification_rewind10;
        private int zzasm = R.drawable.cast_ic_notification_rewind30;
        private int zzasn = R.drawable.cast_ic_notification_disconnect;
        private long zzarZ = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;

        public NotificationOptions build() {
            return new NotificationOptions(this.zzarX, this.zzarY, this.zzarZ, this.zzasa, this.zzasb, this.zzasc, this.zzasd, this.zzase, this.zzasf, this.zzasg, this.zzash, this.zzasi, this.zzasj, this.zzask, this.zzasl, this.zzasm, this.zzasn, R.dimen.cast_notification_image_size, R.string.cast_casting_to_device, R.string.cast_stop_live_stream, R.string.cast_pause, R.string.cast_play, R.string.cast_skip_next, R.string.cast_skip_prev, R.string.cast_forward, R.string.cast_forward_10, R.string.cast_forward_30, R.string.cast_rewind, R.string.cast_rewind_10, R.string.cast_rewind_30, R.string.cast_disconnect);
        }

        public Builder setActions(List<String> list, int[] iArr) {
            if (list != null || iArr == null) {
                if (list != null && iArr == null) {
                    throw new IllegalArgumentException("When setting compatActionIndices to null, you must also set actions to null.");
                }
                if (list == null || iArr == null) {
                    this.zzarX = NotificationOptions.zzarV;
                    this.zzarY = NotificationOptions.zzarW;
                } else {
                    int size = list.size();
                    if (iArr.length > size) {
                        throw new IllegalArgumentException(String.format(Locale.ROOT, "Invalid number of compat actions: %d > %d.", Integer.valueOf(iArr.length), Integer.valueOf(size)));
                    }
                    for (int i : iArr) {
                        if (i < 0 || i >= size) {
                            throw new IllegalArgumentException(String.format(Locale.ROOT, "Index %d in compatActionIndices out of range: [0, %d]", Integer.valueOf(i), Integer.valueOf(size - 1)));
                        }
                    }
                    this.zzarX = new ArrayList(list);
                    this.zzarY = Arrays.copyOf(iArr, iArr.length);
                }
                return this;
            }
            throw new IllegalArgumentException("When setting actions to null, you must also set compatActionIndices to null.");
        }

        public Builder setDisconnectDrawableResId(int i) {
            this.zzasn = i;
            return this;
        }

        public Builder setForward10DrawableResId(int i) {
            this.zzasi = i;
            return this;
        }

        public Builder setForward30DrawableResId(int i) {
            this.zzasj = i;
            return this;
        }

        public Builder setForwardDrawableResId(int i) {
            this.zzash = i;
            return this;
        }

        public Builder setPauseDrawableResId(int i) {
            this.zzasd = i;
            return this;
        }

        public Builder setPlayDrawableResId(int i) {
            this.zzase = i;
            return this;
        }

        public Builder setRewind10DrawableResId(int i) {
            this.zzasl = i;
            return this;
        }

        public Builder setRewind30DrawableResId(int i) {
            this.zzasm = i;
            return this;
        }

        public Builder setRewindDrawableResId(int i) {
            this.zzask = i;
            return this;
        }

        public Builder setSkipNextDrawableResId(int i) {
            this.zzasf = i;
            return this;
        }

        public Builder setSkipPrevDrawableResId(int i) {
            this.zzasg = i;
            return this;
        }

        public Builder setSkipStepMs(long j) {
            zzac.zzb(j > 0, "skipStepMs must be positive.");
            this.zzarZ = j;
            return this;
        }

        public Builder setSmallIconDrawableResId(int i) {
            this.zzasb = i;
            return this;
        }

        public Builder setStopLiveStreamDrawableResId(int i) {
            this.zzasc = i;
            return this;
        }

        public Builder setTargetActivityClassName(String str) {
            this.zzasa = str;
            return this;
        }
    }

    public NotificationOptions(List<String> list, int[] iArr, long j, String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int i26, int i27) {
        if (list != null) {
            this.zzarX = new ArrayList(list);
        } else {
            this.zzarX = null;
        }
        if (iArr != null) {
            this.zzarY = Arrays.copyOf(iArr, iArr.length);
        } else {
            this.zzarY = null;
        }
        this.zzarZ = j;
        this.zzasa = str;
        this.zzasb = i;
        this.zzasc = i2;
        this.zzasd = i3;
        this.zzase = i4;
        this.zzasf = i5;
        this.zzasg = i6;
        this.zzash = i7;
        this.zzasi = i8;
        this.zzasj = i9;
        this.zzask = i10;
        this.zzasl = i11;
        this.zzasm = i12;
        this.zzasn = i13;
        this.zzaso = i14;
        this.zzasp = i15;
        this.zzasq = i16;
        this.zzasr = i17;
        this.zzass = i18;
        this.zzast = i19;
        this.zzasu = i20;
        this.zzasv = i21;
        this.zzasw = i22;
        this.zzasx = i23;
        this.zzasy = i24;
        this.zzasz = i25;
        this.zzasA = i26;
        this.zzasB = i27;
    }

    public List<String> getActions() {
        return this.zzarX;
    }

    public int getCastingToDeviceStringResId() {
        return this.zzasp;
    }

    public int[] getCompatActionIndices() {
        return Arrays.copyOf(this.zzarY, this.zzarY.length);
    }

    public int getDisconnectDrawableResId() {
        return this.zzasn;
    }

    public int getForward10DrawableResId() {
        return this.zzasi;
    }

    public int getForward30DrawableResId() {
        return this.zzasj;
    }

    public int getForwardDrawableResId() {
        return this.zzash;
    }

    public int getPauseDrawableResId() {
        return this.zzasd;
    }

    public int getPlayDrawableResId() {
        return this.zzase;
    }

    public int getRewind10DrawableResId() {
        return this.zzasl;
    }

    public int getRewind30DrawableResId() {
        return this.zzasm;
    }

    public int getRewindDrawableResId() {
        return this.zzask;
    }

    public int getSkipNextDrawableResId() {
        return this.zzasf;
    }

    public int getSkipPrevDrawableResId() {
        return this.zzasg;
    }

    public long getSkipStepMs() {
        return this.zzarZ;
    }

    public int getSmallIconDrawableResId() {
        return this.zzasb;
    }

    public int getStopLiveStreamDrawableResId() {
        return this.zzasc;
    }

    public int getStopLiveStreamTitleResId() {
        return this.zzasq;
    }

    public String getTargetActivityClassName() {
        return this.zzasa;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    public int zztA() {
        return this.zzasz;
    }

    public int zztB() {
        return this.zzasA;
    }

    public int zztC() {
        return this.zzasB;
    }

    public int zztr() {
        return this.zzaso;
    }

    public int zzts() {
        return this.zzasr;
    }

    public int zztt() {
        return this.zzass;
    }

    public int zztu() {
        return this.zzast;
    }

    public int zztv() {
        return this.zzasu;
    }

    public int zztw() {
        return this.zzasv;
    }

    public int zztx() {
        return this.zzasw;
    }

    public int zzty() {
        return this.zzasx;
    }

    public int zztz() {
        return this.zzasy;
    }
}
