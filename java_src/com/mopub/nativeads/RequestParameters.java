package com.mopub.nativeads;

import android.location.Location;
import android.text.TextUtils;
import com.pubmatic.sdk.common.CommonConstants;
import java.util.EnumSet;
/* loaded from: classes3.dex */
public class RequestParameters {

    /* renamed from: a  reason: collision with root package name */
    private final String f4618a;
    private final Location b;
    private final EnumSet<NativeAdAsset> c;

    /* loaded from: classes3.dex */
    public enum NativeAdAsset {
        TITLE("title"),
        TEXT(CommonConstants.RESPONSE_TEXT),
        ICON_IMAGE("iconimage"),
        MAIN_IMAGE("mainimage"),
        CALL_TO_ACTION_TEXT("ctatext"),
        STAR_RATING("starrating");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f4620a;

        NativeAdAsset(String str) {
            this.f4620a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f4620a;
        }
    }

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f4619a;
        private Location b;
        private EnumSet<NativeAdAsset> c;

        public final Builder keywords(String str) {
            this.f4619a = str;
            return this;
        }

        public final Builder location(Location location) {
            this.b = location;
            return this;
        }

        public final Builder desiredAssets(EnumSet<NativeAdAsset> enumSet) {
            this.c = EnumSet.copyOf((EnumSet) enumSet);
            return this;
        }

        public final RequestParameters build() {
            return new RequestParameters(this);
        }
    }

    private RequestParameters(Builder builder) {
        this.f4618a = builder.f4619a;
        this.b = builder.b;
        this.c = builder.c;
    }

    public final String getKeywords() {
        return this.f4618a;
    }

    public final Location getLocation() {
        return this.b;
    }

    public final String getDesiredAssets() {
        if (this.c == null) {
            return "";
        }
        return TextUtils.join(",", this.c.toArray());
    }
}
