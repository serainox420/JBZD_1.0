package com.apprupt.sdk.adview;

import com.apprupt.sdk.SimpleJSON;
import com.pubmatic.sdk.banner.mraid.Consts;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class OrientationProperties {

    /* renamed from: a  reason: collision with root package name */
    private boolean f1993a = true;
    private Orientation b = Orientation.NONE;

    public void a(SimpleJSON simpleJSON) {
        synchronized (this) {
            this.f1993a = simpleJSON.a(Consts.OrientationPpropertiesAllowOrientationChange, this.f1993a);
            String a2 = simpleJSON.a(Consts.OrientationPpropertiesForceOrientation, this.b.toString());
            if (a2.equals(Orientation.PORTRAIT.toString())) {
                this.b = Orientation.PORTRAIT;
            } else if (a2.equals(Orientation.LANDSCAPE.toString())) {
                this.b = Orientation.LANDSCAPE;
            } else {
                this.b = Orientation.NONE;
            }
        }
    }

    public JSONObject a() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(Consts.OrientationPpropertiesAllowOrientationChange, this.f1993a);
                jSONObject.put(Consts.OrientationPpropertiesForceOrientation, this.b.toString());
            } catch (Exception e) {
            }
        }
        return jSONObject;
    }

    public Orientation b() {
        Orientation orientation;
        synchronized (this) {
            orientation = this.b;
        }
        return orientation;
    }

    public boolean c() {
        boolean z;
        synchronized (this) {
            z = this.f1993a;
        }
        return z;
    }
}
