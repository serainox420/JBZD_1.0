package com.google.android.gms.appindexing;

import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.appindexing.Thing;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.fitness.FitnessActivities;
/* loaded from: classes2.dex */
public final class Action extends Thing {
    public static final String STATUS_TYPE_ACTIVE = "http://schema.org/ActiveActionStatus";
    public static final String STATUS_TYPE_COMPLETED = "http://schema.org/CompletedActionStatus";
    public static final String STATUS_TYPE_FAILED = "http://schema.org/FailedActionStatus";
    public static final String TYPE_ACTIVATE = "http://schema.org/ActivateAction";
    public static final String TYPE_ADD = "http://schema.org/AddAction";
    public static final String TYPE_BOOKMARK = "http://schema.org/BookmarkAction";
    public static final String TYPE_COMMUNICATE = "http://schema.org/CommunicateAction";
    public static final String TYPE_FILM = "http://schema.org/FilmAction";
    public static final String TYPE_LIKE = "http://schema.org/LikeAction";
    public static final String TYPE_LISTEN = "http://schema.org/ListenAction";
    public static final String TYPE_PHOTOGRAPH = "http://schema.org/PhotographAction";
    public static final String TYPE_RESERVE = "http://schema.org/ReserveAction";
    public static final String TYPE_SEARCH = "http://schema.org/SearchAction";
    public static final String TYPE_VIEW = "http://schema.org/ViewAction";
    public static final String TYPE_WANT = "http://schema.org/WantAction";
    public static final String TYPE_WATCH = "http://schema.org/WatchAction";

    /* loaded from: classes2.dex */
    public static final class Builder extends Thing.Builder {
        public Builder(String str) {
            zzac.zzw(str);
            super.mo479put("type", str);
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        /* renamed from: build */
        public Action mo477build() {
            zzac.zzb(this.zzaic.get("object"), "setObject is required before calling build().");
            zzac.zzb(this.zzaic.get("type"), "setType is required before calling build().");
            Bundle bundle = (Bundle) this.zzaic.getParcelable("object");
            zzac.zzb(bundle.get("name"), "Must call setObject() with a valid name. Example: setObject(new Thing.Builder().setName(name).setUrl(url))");
            zzac.zzb(bundle.get("url"), "Must call setObject() with a valid app URI. Example: setObject(new Thing.Builder().setName(name).setUrl(url))");
            return new Action(this.zzaic);
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        /* renamed from: put */
        public Builder mo478put(String str, Thing thing) {
            return (Builder) super.mo478put(str, thing);
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        /* renamed from: put */
        public Builder mo479put(String str, String str2) {
            return (Builder) super.mo479put(str, str2);
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        /* renamed from: put */
        public Builder mo480put(String str, boolean z) {
            return (Builder) super.mo480put(str, z);
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        /* renamed from: put */
        public Builder mo481put(String str, Thing[] thingArr) {
            return (Builder) super.mo481put(str, thingArr);
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        /* renamed from: put */
        public Builder mo482put(String str, String[] strArr) {
            return (Builder) super.mo482put(str, strArr);
        }

        public Builder setActionStatus(String str) {
            zzac.zzw(str);
            return (Builder) super.mo479put(FitnessActivities.EXTRA_STATUS, str);
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        /* renamed from: setName */
        public Builder mo483setName(String str) {
            return (Builder) super.mo479put("name", str);
        }

        public Builder setObject(Thing thing) {
            zzac.zzw(thing);
            return (Builder) super.mo478put("object", thing);
        }

        @Override // com.google.android.gms.appindexing.Thing.Builder
        /* renamed from: setUrl */
        public Builder mo484setUrl(Uri uri) {
            if (uri != null) {
                super.mo479put("url", uri.toString());
            }
            return this;
        }
    }

    private Action(Bundle bundle) {
        super(bundle);
    }

    public static Action newAction(String str, String str2, Uri uri) {
        return newAction(str, str2, null, uri);
    }

    public static Action newAction(String str, String str2, Uri uri, Uri uri2) {
        return (Action) new Builder(str).setObject(new Thing.Builder().mo483setName(str2).setId(uri == null ? null : uri.toString()).mo484setUrl(uri2).mo477build()).mo477build();
    }
}
