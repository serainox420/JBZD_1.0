package com.flurry.sdk;

import android.graphics.Rect;
import android.media.AudioManager;
import android.text.TextUtils;
import android.view.View;
import com.flurry.sdk.mj;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class bk {
    private static final String c = bk.class.getName();
    private String d;
    private String e;
    private ay f;
    private r g;
    private Map<String, String> h;
    private AudioManager j;
    private WeakReference<View> i = new WeakReference<>(null);

    /* renamed from: a  reason: collision with root package name */
    public boolean f2485a = false;
    public int b = 0;
    private AtomicBoolean k = new AtomicBoolean(false);
    private int l = 0;
    private boolean m = true;
    private final kh<ls> n = new kh<ls>() { // from class: com.flurry.sdk.bk.1
        @Override // com.flurry.sdk.kh
        public final /* bridge */ /* synthetic */ void a(ls lsVar) {
            bk.a(bk.this);
        }
    };

    public bk(ay ayVar, r rVar, String str) {
        JSONObject jSONObject;
        int i;
        this.j = null;
        if (ayVar == null) {
            throw new IllegalArgumentException("AdUnit is null while creating internal adUnit.");
        }
        this.f = ayVar;
        this.g = rVar;
        this.d = str;
        mj mjVar = mh.b().f3060a;
        if (mjVar != null) {
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put(mj.a.SDK_NAME.q, mjVar.a());
            hashMap.put(mj.a.SDK_VERSION.q, mjVar.b());
            hashMap.put(mj.a.API_KEY.q, mjVar.c());
            hashMap.put(mj.a.APP_ID.q, mjVar.d());
            hashMap.put(mj.a.AD_TYPE.q, this.f.b.e);
            hashMap.put(mj.a.ADUNIT_ID.q, this.d);
            try {
                jSONObject = new JSONObject(this.f.b.z.e);
            } catch (JSONException e) {
                km.a(4, c, "Error parsing JSON: " + e);
                jSONObject = new JSONObject();
            }
            String optString = jSONObject.optString("displayType", null);
            jSONObject.optString("layoutType", null);
            int a2 = mh.a(optString);
            int a3 = mh.a();
            hashMap.put(mj.a.AD_UNIT_DISPLAY_TYPE.q, Integer.valueOf(a2));
            hashMap.put(mj.a.AD_INVENTORY_SOURCE_ID.q, jSONObject.optString("inventorySourceId", null));
            hashMap.put(mj.a.AD_TEMPLATE.q, Integer.valueOf(a3));
            hashMap.put(mj.a.AD_ID.q, jSONObject.optString("id", null));
            String str2 = mj.a.AD_MEDIA_TYPE.q;
            if (a("videoUrl") != null) {
                i = mh.j;
            } else if (a("secHqImage") != null) {
                i = mh.h;
            } else {
                i = mh.i;
            }
            hashMap.put(str2, Integer.valueOf(i));
            this.g.l().b.j = hashMap;
        }
        this.j = (AudioManager) this.g.f().getSystemService("audio");
    }

    private mi a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (de deVar : this.f.b()) {
            if (deVar.f2530a.equals(str)) {
                return new mi(deVar);
            }
        }
        return null;
    }

    private synchronized void a() {
        if (!this.k.get()) {
            km.a(4, c, "Impression logged" + this.f.f2466a);
            bc bcVar = bc.EV_NATIVE_IMPRESSION;
            Map map = this.h;
            km.a(4, c, "Sending EventType:" + bcVar + " for AdUnitId:" + this.f.f2466a + " for AdUnitSection:" + this.d);
            if (map == null) {
                map = new HashMap();
            }
            this.g.l().a(this.d, this.f.f2466a);
            ff.a(bcVar, map, this.g.f(), this.g, this.g.l(), 0);
            this.k.set(true);
            HashMap hashMap = new HashMap();
            if (this.g.l().b.j != null) {
                hashMap.putAll(this.g.l().b.j);
                hashMap.put(mj.a.REQUEST_ID.q, this.e);
            }
            if (mh.b().f3060a != null) {
                mj mjVar = mh.b().f3060a;
                int i = mh.k;
            }
        }
    }

    static /* synthetic */ void a(bk bkVar) {
        long j;
        View view = bkVar.i.get();
        if (view != null && !bkVar.k.get()) {
            Rect rect = new Rect();
            if (!view.isShown() || !view.getGlobalVisibleRect(rect)) {
                j = 0;
            } else {
                j = rect.height() * rect.width();
            }
            if (j > 0) {
                if (((float) j) >= ((float) ((view.getHeight() * view.getWidth()) * 50)) / 100.0f) {
                    int i = bkVar.l + 1;
                    bkVar.l = i;
                    if (i >= 10) {
                        bkVar.a();
                        lt.a().b(bkVar.n);
                        return;
                    }
                    return;
                }
                bkVar.l = 0;
                return;
            }
            bkVar.l = 0;
        }
    }
}
