package com.google.android.gms.appindexing;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class Thing {
    final Bundle zzaib;

    /* loaded from: classes2.dex */
    public static class Builder {
        final Bundle zzaic = new Bundle();

        /* renamed from: build */
        public Thing mo477build() {
            return new Thing(this.zzaic);
        }

        /* renamed from: put */
        public Builder mo478put(String str, Thing thing) {
            zzac.zzw(str);
            if (thing != null) {
                this.zzaic.putParcelable(str, thing.zzaib);
            }
            return this;
        }

        /* renamed from: put */
        public Builder mo479put(String str, String str2) {
            zzac.zzw(str);
            if (str2 != null) {
                this.zzaic.putString(str, str2);
            }
            return this;
        }

        /* renamed from: put */
        public Builder mo480put(String str, boolean z) {
            zzac.zzw(str);
            this.zzaic.putBoolean(str, z);
            return this;
        }

        /* renamed from: put */
        public Builder mo481put(String str, Thing[] thingArr) {
            zzac.zzw(str);
            if (thingArr != null) {
                ArrayList arrayList = new ArrayList();
                for (Thing thing : thingArr) {
                    if (thing != null) {
                        arrayList.add(thing.zzaib);
                    }
                }
                this.zzaic.putParcelableArray(str, (Parcelable[]) arrayList.toArray(new Bundle[arrayList.size()]));
            }
            return this;
        }

        /* renamed from: put */
        public Builder mo482put(String str, String[] strArr) {
            zzac.zzw(str);
            if (strArr != null) {
                this.zzaic.putStringArray(str, strArr);
            }
            return this;
        }

        public Builder setDescription(String str) {
            mo479put("description", str);
            return this;
        }

        public Builder setId(String str) {
            if (str != null) {
                mo479put("id", str);
            }
            return this;
        }

        /* renamed from: setName */
        public Builder mo483setName(String str) {
            zzac.zzw(str);
            mo479put("name", str);
            return this;
        }

        public Builder setType(String str) {
            mo479put("type", str);
            return this;
        }

        /* renamed from: setUrl */
        public Builder mo484setUrl(Uri uri) {
            zzac.zzw(uri);
            mo479put("url", uri.toString());
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Thing(Bundle bundle) {
        this.zzaib = bundle;
    }

    public Bundle zzqK() {
        return this.zzaib;
    }
}
