package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.appindexing.AppIndexApi;
import com.google.android.gms.internal.zzaqn;
import com.google.android.gms.internal.zztp;
import com.google.android.gms.internal.zzub;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Locale;
import java.util.zip.CRC32;
/* loaded from: classes2.dex */
public class zzud extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzud> CREATOR = new zzue();
    public final String zzAT;
    final zztr zzahP;
    final long zzahQ;
    int zzahR;
    final zztp zzahS;
    final boolean zzahT;
    int zzahU;
    int zzahV;

    /* loaded from: classes2.dex */
    public static final class zza {
        private zztr zzahP;
        private zztp zzahS;
        private long zzahQ = -1;
        private int zzahR = -1;
        private int zzahU = -1;
        private boolean zzahT = false;
        private int zzahV = 0;

        public zza zzB(long j) {
            this.zzahQ = j;
            return this;
        }

        public zza zza(zztp zztpVar) {
            this.zzahS = zztpVar;
            return this;
        }

        public zza zza(zztr zztrVar) {
            this.zzahP = zztrVar;
            return this;
        }

        public zza zzaS(int i) {
            this.zzahR = i;
            return this;
        }

        public zza zzaT(int i) {
            this.zzahV = i;
            return this;
        }

        public zza zzab(boolean z) {
            this.zzahT = z;
            return this;
        }

        public zzud zzqI() {
            return new zzud(this.zzahP, this.zzahQ, this.zzahR, null, this.zzahS, this.zzahT, this.zzahU, this.zzahV);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzud(zztr zztrVar, long j, int i, String str, zztp zztpVar, boolean z, int i2, int i3) {
        this.zzahP = zztrVar;
        this.zzahQ = j;
        this.zzahR = i;
        this.zzAT = str;
        this.zzahS = zztpVar;
        this.zzahT = z;
        this.zzahU = i2;
        this.zzahV = i3;
    }

    public zzud(String str, Intent intent, String str2, Uri uri, String str3, List<AppIndexApi.AppIndexingLink> list, int i) {
        this(zza(str, intent), System.currentTimeMillis(), 0, null, zza(intent, str2, uri, str3, list).zzqE(), false, -1, i);
    }

    public static zztp.zza zza(Intent intent, String str, Uri uri, String str2, List<AppIndexApi.AppIndexingLink> list) {
        String string;
        zztp.zza zzaVar = new zztp.zza();
        zzaVar.zza(zzcp(str));
        if (uri != null) {
            zzaVar.zza(zzk(uri));
        }
        if (list != null) {
            zzaVar.zza(zzv(list));
        }
        String action = intent.getAction();
        if (action != null) {
            zzaVar.zza(zzu("intent_action", action));
        }
        String dataString = intent.getDataString();
        if (dataString != null) {
            zzaVar.zza(zzu("intent_data", dataString));
        }
        ComponentName component = intent.getComponent();
        if (component != null) {
            zzaVar.zza(zzu("intent_activity", component.getClassName()));
        }
        Bundle extras = intent.getExtras();
        if (extras != null && (string = extras.getString("intent_extra_data_key")) != null) {
            zzaVar.zza(zzu("intent_extra_data", string));
        }
        return zzaVar.zzcl(str2).zzY(true);
    }

    public static zztr zza(String str, Intent intent) {
        return zzt(str, zzg(intent));
    }

    private static zztt zzcp(String str) {
        return new zztt(str, new zzub.zza("title").zzaQ(1).zzaa(true).zzco("name").zzqH(), "text1");
    }

    private static String zzg(Intent intent) {
        String uri = intent.toUri(1);
        CRC32 crc32 = new CRC32();
        try {
            crc32.update(uri.getBytes("UTF-8"));
            return Long.toHexString(crc32.getValue());
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e);
        }
    }

    public static zztt zzk(Uri uri) {
        return new zztt(uri.toString(), new zzub.zza("web_url").zzaQ(4).zzZ(true).zzco("url").zzqH());
    }

    private static zztr zzt(String str, String str2) {
        return new zztr(str, "", str2);
    }

    private static zztt zzu(String str, String str2) {
        return new zztt(str2, new zzub.zza(str).zzZ(true).zzqH(), str);
    }

    private static zztt zzv(List<AppIndexApi.AppIndexingLink> list) {
        zzaqn.zza zzaVar = new zzaqn.zza();
        zzaqn.zza.C0254zza[] c0254zzaArr = new zzaqn.zza.C0254zza[list.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= c0254zzaArr.length) {
                zzaVar.zzbhg = c0254zzaArr;
                return new zztt(zzbxt.zzf(zzaVar), new zzub.zza("outlinks").zzZ(true).zzco(".private:outLinks").zzcn("blob").zzqH());
            }
            c0254zzaArr[i2] = new zzaqn.zza.C0254zza();
            AppIndexApi.AppIndexingLink appIndexingLink = list.get(i2);
            c0254zzaArr[i2].zzbhi = appIndexingLink.appIndexingUrl.toString();
            c0254zzaArr[i2].viewId = appIndexingLink.viewId;
            if (appIndexingLink.webUrl != null) {
                c0254zzaArr[i2].zzbhj = appIndexingLink.webUrl.toString();
            }
            i = i2 + 1;
        }
    }

    public String toString() {
        return String.format(Locale.US, "UsageInfo[documentId=%s, timestamp=%d, usageType=%d, status=%d]", this.zzahP, Long.valueOf(this.zzahQ), Integer.valueOf(this.zzahR), Integer.valueOf(this.zzahV));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzue.zza(this, parcel, i);
    }
}
