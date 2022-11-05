package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import com.madsdk.AdView;
import com.mopub.common.DataKeys;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Numbers;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.NativeImageHelper;
import com.pubmatic.sdk.common.CommonConstants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class MoPubCustomEventNative extends CustomEventNative {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.nativeads.CustomEventNative
    public void a(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        Object obj = map.get(DataKeys.JSON_BODY_KEY);
        if (!(obj instanceof JSONObject)) {
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.INVALID_RESPONSE);
            return;
        }
        try {
            new a(context, (JSONObject) obj, new ImpressionTracker(context), new NativeClickHandler(context), customEventNativeListener).e();
        } catch (IllegalArgumentException e) {
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
        }
    }

    /* loaded from: classes3.dex */
    static class a extends StaticNativeAd {

        /* renamed from: a  reason: collision with root package name */
        private final Context f4590a;
        private final CustomEventNative.CustomEventNativeListener b;
        private final JSONObject c;
        private final ImpressionTracker d;
        private final NativeClickHandler e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.mopub.nativeads.MoPubCustomEventNative$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public enum EnumC0527a {
            IMPRESSION_TRACKER("imptracker", true),
            CLICK_TRACKER("clktracker", true),
            TITLE("title", false),
            TEXT(CommonConstants.RESPONSE_TEXT, false),
            MAIN_IMAGE("mainimage", false),
            ICON_IMAGE("iconimage", false),
            CLICK_DESTINATION("clk", false),
            FALLBACK("fallback", false),
            CALL_TO_ACTION("ctatext", false),
            STAR_RATING("starrating", false);
            
            @VisibleForTesting
            static final Set<String> c = new HashSet();

            /* renamed from: a  reason: collision with root package name */
            final String f4592a;
            final boolean b;

            static {
                EnumC0527a[] values;
                for (EnumC0527a enumC0527a : values()) {
                    if (enumC0527a.b) {
                        c.add(enumC0527a.f4592a);
                    }
                }
            }

            EnumC0527a(String str, boolean z) {
                this.f4592a = str;
                this.b = z;
            }

            static EnumC0527a a(String str) {
                EnumC0527a[] values;
                for (EnumC0527a enumC0527a : values()) {
                    if (enumC0527a.f4592a.equals(str)) {
                        return enumC0527a;
                    }
                }
                return null;
            }
        }

        a(Context context, JSONObject jSONObject, ImpressionTracker impressionTracker, NativeClickHandler nativeClickHandler, CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            this.c = jSONObject;
            this.f4590a = context.getApplicationContext();
            this.d = impressionTracker;
            this.e = nativeClickHandler;
            this.b = customEventNativeListener;
        }

        void e() throws IllegalArgumentException {
            if (!a(this.c)) {
                throw new IllegalArgumentException("JSONObject did not contain required keys.");
            }
            Iterator<String> keys = this.c.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                EnumC0527a a2 = EnumC0527a.a(next);
                if (a2 != null) {
                    try {
                        a(a2, this.c.opt(next));
                    } catch (ClassCastException e) {
                        throw new IllegalArgumentException("JSONObject key (" + next + ") contained unexpected value.");
                    }
                } else {
                    addExtra(next, this.c.opt(next));
                }
            }
            setPrivacyInformationIconClickThroughUrl("https://www.mopub.com/optout");
            NativeImageHelper.preCacheImages(this.f4590a, g(), new NativeImageHelper.ImageListener() { // from class: com.mopub.nativeads.MoPubCustomEventNative.a.1
                @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
                public void onImagesCached() {
                    a.this.b.onNativeAdLoaded(a.this);
                }

                @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
                public void onImagesFailedToCache(NativeErrorCode nativeErrorCode) {
                    a.this.b.onNativeAdFailed(nativeErrorCode);
                }
            });
        }

        private boolean a(JSONObject jSONObject) {
            HashSet hashSet = new HashSet();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                hashSet.add(keys.next());
            }
            return hashSet.containsAll(EnumC0527a.c);
        }

        private void a(EnumC0527a enumC0527a, Object obj) throws ClassCastException {
            try {
                switch (enumC0527a) {
                    case MAIN_IMAGE:
                        setMainImageUrl((String) obj);
                        break;
                    case ICON_IMAGE:
                        setIconImageUrl((String) obj);
                        break;
                    case IMPRESSION_TRACKER:
                        a(obj);
                        break;
                    case CLICK_DESTINATION:
                        setClickDestinationUrl((String) obj);
                        break;
                    case CLICK_TRACKER:
                        c(obj);
                        break;
                    case CALL_TO_ACTION:
                        setCallToAction((String) obj);
                        break;
                    case TITLE:
                        setTitle((String) obj);
                        break;
                    case TEXT:
                        setText((String) obj);
                        break;
                    case STAR_RATING:
                        setStarRating(Numbers.parseDouble(obj));
                        break;
                    default:
                        MoPubLog.d("Unable to add JSON key to internal mapping: " + enumC0527a.f4592a);
                        break;
                }
            } catch (ClassCastException e) {
                if (!enumC0527a.b) {
                    MoPubLog.d("Ignoring class cast exception for optional key: " + enumC0527a.f4592a);
                    return;
                }
                throw e;
            }
        }

        private void c(Object obj) {
            if (obj instanceof JSONArray) {
                b(obj);
            } else {
                addClickTracker((String) obj);
            }
        }

        private boolean a(String str) {
            return str != null && str.toLowerCase(Locale.US).endsWith(AdView.DEFAULT_IMAGE_NAME);
        }

        List<String> f() {
            ArrayList arrayList = new ArrayList(getExtras().size());
            for (Map.Entry<String, Object> entry : getExtras().entrySet()) {
                if (a(entry.getKey()) && (entry.getValue() instanceof String)) {
                    arrayList.add((String) entry.getValue());
                }
            }
            return arrayList;
        }

        List<String> g() {
            ArrayList arrayList = new ArrayList();
            if (getMainImageUrl() != null) {
                arrayList.add(getMainImageUrl());
            }
            if (getIconImageUrl() != null) {
                arrayList.add(getIconImageUrl());
            }
            arrayList.addAll(f());
            return arrayList;
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void prepare(View view) {
            this.d.addView(view, this);
            this.e.setOnClickListener(view, this);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void clear(View view) {
            this.d.removeView(view);
            this.e.clearOnClickListener(view);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void destroy() {
            this.d.destroy();
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ImpressionInterface
        public void recordImpression(View view) {
            a();
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ClickInterface
        public void handleClick(View view) {
            b();
            this.e.openClickDestinationUrl(getClickDestinationUrl(), view);
        }
    }
}
