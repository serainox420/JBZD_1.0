package com.apprupt.sdk.adview;

import com.apprupt.sdk.SimpleJSON;
import com.pubmatic.sdk.banner.mraid.Consts;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class ResizeProperties {
    private int b = 0;
    private int c = 0;
    private int d = 0;
    private int e = 0;

    /* renamed from: a  reason: collision with root package name */
    protected CloseButtonPosition f1994a = CloseButtonPosition.TOP_RIGHT;
    private boolean f = true;

    public void a(SimpleJSON simpleJSON) {
        synchronized (this) {
            this.b = simpleJSON.d("width", Integer.valueOf(this.b));
            this.c = simpleJSON.d("height", Integer.valueOf(this.c));
            String a2 = simpleJSON.a(Consts.ResizePropertiesCustomClosePosition, this.f1994a.toString());
            if (a2.equals(CloseButtonPosition.TOP_LEFT.toString())) {
                this.f1994a = CloseButtonPosition.TOP_LEFT;
            } else if (a2.equals(CloseButtonPosition.TOP_CENTER.toString())) {
                this.f1994a = CloseButtonPosition.TOP_CENTER;
            } else if (a2.equals(CloseButtonPosition.BOTTOM_RIGHT.toString())) {
                this.f1994a = CloseButtonPosition.BOTTOM_RIGHT;
            } else if (a2.equals(CloseButtonPosition.BOTTOM_LEFT.toString())) {
                this.f1994a = CloseButtonPosition.BOTTOM_LEFT;
            } else if (a2.equals(CloseButtonPosition.BOTTOM_CENTER.toString())) {
                this.f1994a = CloseButtonPosition.BOTTOM_CENTER;
            } else if (a2.equals(CloseButtonPosition.CENTER.toString())) {
                this.f1994a = CloseButtonPosition.CENTER;
            } else {
                this.f1994a = CloseButtonPosition.TOP_RIGHT;
            }
        }
    }

    public int d() {
        int i;
        synchronized (this) {
            i = this.b;
        }
        return i;
    }

    public int e() {
        int i;
        synchronized (this) {
            i = this.c;
        }
        return i;
    }

    public CloseButtonPosition f() {
        CloseButtonPosition closeButtonPosition;
        synchronized (this) {
            closeButtonPosition = this.f1994a;
        }
        return closeButtonPosition;
    }

    public int g() {
        int i;
        synchronized (this) {
            i = this.d;
        }
        return i;
    }

    public int h() {
        int i;
        synchronized (this) {
            i = this.e;
        }
        return i;
    }

    public boolean i() {
        boolean z;
        synchronized (this) {
            z = this.f;
        }
        return z;
    }

    public JSONObject c() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("width", d());
                jSONObject.put("height", e());
                jSONObject.put(Consts.ResizePropertiesOffsetX, g());
                jSONObject.put(Consts.ResizePropertiesOffsetY, h());
                jSONObject.put(Consts.ResizePropertiesCustomClosePosition, f().toString());
                jSONObject.put(Consts.ResizePropertiesAllowOffscreen, i());
            } catch (Exception e) {
            }
        }
        return jSONObject;
    }
}
