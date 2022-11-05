package com.apprupt.sdk.adview;

import android.graphics.Color;
import com.apprupt.sdk.CvViewHelper;
import com.apprupt.sdk.Logger;
import com.apprupt.sdk.SimpleJSON;
import com.openx.view.mraid.JSInterface;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class ExpandProperties extends ResizeProperties {
    private int b = Color.argb(179, 0, 0, 0);

    @Override // com.apprupt.sdk.adview.ResizeProperties
    public void a(SimpleJSON simpleJSON) {
        synchronized (this) {
            super.a(simpleJSON);
            boolean a2 = simpleJSON.a("useCustomClose", a());
            String a3 = simpleJSON.a("backgroundColor", (String) null);
            this.f1994a = a2 ? CloseButtonPosition.HIDDEN : CloseButtonPosition.TOP_RIGHT;
            a(a3);
        }
    }

    public boolean a() {
        boolean z;
        synchronized (this) {
            z = this.f1994a == CloseButtonPosition.HIDDEN;
        }
        return z;
    }

    public void a(boolean z) {
        synchronized (this) {
            this.f1994a = z ? CloseButtonPosition.HIDDEN : CloseButtonPosition.TOP_RIGHT;
        }
    }

    public String b() {
        return String.format("rgba(%d,%d,%d,%f)", Integer.valueOf(Color.red(this.b)), Integer.valueOf(Color.green(this.b)), Integer.valueOf(Color.blue(this.b)), Float.valueOf(Color.alpha(this.b) / 255.0f));
    }

    public void a(int i) {
        this.b = i;
        Logger.a("COLOR").d("expand color set to", Integer.valueOf(i), b(), Integer.valueOf(Color.red(this.b)), Integer.valueOf(Color.green(this.b)), Integer.valueOf(Color.blue(this.b)), Integer.valueOf(Color.alpha(this.b)));
    }

    public void a(String str) {
        if (str != null && str.length() != 0) {
            try {
                this.b = CvViewHelper.a(str);
                Logger.a("COLOR").d("expand color set to", str, b(), Integer.valueOf(Color.red(this.b)), Integer.valueOf(Color.green(this.b)), Integer.valueOf(Color.blue(this.b)), Integer.valueOf(Color.alpha(this.b)));
            } catch (IllegalArgumentException e) {
            }
        }
    }

    @Override // com.apprupt.sdk.adview.ResizeProperties
    public JSONObject c() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("width", d());
                jSONObject.put("height", e());
                jSONObject.put("useCustomClose", a());
                jSONObject.put("backgroundColor", b());
                jSONObject.put(JSInterface.JSON_IS_MODAL, true);
            } catch (Exception e) {
            }
        }
        return jSONObject;
    }
}
