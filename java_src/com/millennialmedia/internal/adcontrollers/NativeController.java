package com.millennialmedia.internal.adcontrollers;

import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.plus.PlusShare;
import com.millennialmedia.MMLog;
import com.pubmatic.sdk.common.CommonConstants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class NativeController extends AdController {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4139a = NativeController.class.getName();
    public List<Asset> assets;
    private NativeControllerListener b;
    public List<String> impTrackers;
    public String jsTracker;
    public Link link;
    public int version = 1;

    /* loaded from: classes3.dex */
    public static class Link {
        public List<String> clickTrackerUrls;
        public String fallback;
        public String url;
    }

    /* loaded from: classes3.dex */
    public interface NativeControllerListener {
        void initFailed(Throwable th);

        void initSucceeded();
    }

    /* loaded from: classes3.dex */
    public static class Asset {
        public Data data;
        public int id;
        public Image image;
        public Link link;
        public boolean required;
        public Title title;
        public Type type;
        public Video video;

        /* loaded from: classes3.dex */
        public static class Data {
            public String label;
            public String value;
        }

        /* loaded from: classes3.dex */
        public static class Image {
            public Integer height;
            public String url;
            public Integer width;
        }

        /* loaded from: classes3.dex */
        public static class Title {
            public String value;
        }

        /* loaded from: classes3.dex */
        public enum Type {
            TITLE,
            IMAGE,
            VIDEO,
            DATA,
            UNKNOWN
        }

        /* loaded from: classes3.dex */
        public static class Video {
            public String vastTag;
        }

        Asset(Type type, int i, boolean z) {
            this.required = false;
            this.type = type;
            this.id = i;
            this.required = z;
        }
    }

    public NativeController() {
    }

    public NativeController(NativeControllerListener nativeControllerListener) {
        this.b = nativeControllerListener;
    }

    public void init(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject("native");
            this.version = jSONObject.optInt("ver", this.version);
            a(jSONObject.getJSONArray("assets"));
            this.link = a(jSONObject.getJSONObject("link"));
            JSONArray optJSONArray = jSONObject.optJSONArray("imptrackers");
            if (optJSONArray != null) {
                this.impTrackers = new ArrayList();
                for (int i = 0; i < optJSONArray.length(); i++) {
                    this.impTrackers.add(optJSONArray.getString(i));
                }
            }
            this.jsTracker = jSONObject.optString("jstracker", null);
            this.b.initSucceeded();
        } catch (JSONException e) {
            MMLog.e(f4139a, "Initialization of the native controller instance failed", e);
            this.b.initFailed(e);
        }
    }

    @Override // com.millennialmedia.internal.adcontrollers.AdController
    public boolean canHandleContent(String str) {
        try {
            new JSONObject(str).getJSONObject("native");
            return true;
        } catch (JSONException e) {
            return false;
        }
    }

    private void a(JSONArray jSONArray) throws JSONException {
        Asset asset;
        this.assets = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            int i2 = jSONObject.getInt("id");
            boolean z = jSONObject.optInt("required") > 0;
            if (jSONObject.has("title")) {
                try {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("title");
                    Asset asset2 = new Asset(Asset.Type.TITLE, i2, z);
                    asset2.title = new Asset.Title();
                    asset2.title.value = jSONObject2.getString(CommonConstants.RESPONSE_TEXT);
                    asset = asset2;
                } catch (JSONException e) {
                    asset = null;
                }
            } else if (jSONObject.has("img")) {
                try {
                    JSONObject jSONObject3 = jSONObject.getJSONObject("img");
                    Asset asset3 = new Asset(Asset.Type.IMAGE, i2, z);
                    asset3.image = new Asset.Image();
                    asset3.image.url = jSONObject3.getString("url");
                    try {
                        asset3.image.width = Integer.valueOf(jSONObject3.getInt("w"));
                    } catch (JSONException e2) {
                    }
                    try {
                        asset3.image.height = Integer.valueOf(jSONObject3.getInt("h"));
                    } catch (JSONException e3) {
                    }
                    asset = asset3;
                } catch (JSONException e4) {
                    asset = null;
                }
            } else if (jSONObject.has(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) {
                try {
                    JSONObject jSONObject4 = jSONObject.getJSONObject(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
                    Asset asset4 = new Asset(Asset.Type.VIDEO, i2, z);
                    asset4.video = new Asset.Video();
                    asset4.video.vastTag = jSONObject4.getString("vasttag");
                    asset = asset4;
                } catch (JSONException e5) {
                    asset = null;
                }
            } else if (jSONObject.has("data")) {
                try {
                    JSONObject jSONObject5 = jSONObject.getJSONObject("data");
                    Asset asset5 = new Asset(Asset.Type.DATA, i2, z);
                    asset5.data = new Asset.Data();
                    asset5.data.value = jSONObject5.getString("value");
                    asset5.data.label = jSONObject5.optString(PlusShare.KEY_CALL_TO_ACTION_LABEL, null);
                    asset = asset5;
                } catch (JSONException e6) {
                    asset = null;
                }
            } else {
                asset = null;
            }
            if (asset != null) {
                try {
                    asset.link = a(jSONObject.getJSONObject("link"));
                } catch (JSONException e7) {
                }
                this.assets.add(asset);
            }
        }
    }

    private Link a(JSONObject jSONObject) throws JSONException {
        Link link = new Link();
        link.url = jSONObject.getString("url");
        if (jSONObject.has("clicktrackers")) {
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("clicktrackers");
                link.clickTrackerUrls = new ArrayList();
                for (int i = 0; i < jSONArray.length(); i++) {
                    link.clickTrackerUrls.add(jSONArray.getString(i));
                }
            } catch (JSONException e) {
            }
        }
        link.fallback = jSONObject.optString("fallback", null);
        return link;
    }
}
