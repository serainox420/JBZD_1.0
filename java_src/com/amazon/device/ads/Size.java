package com.amazon.device.ads;

import com.openx.view.mraid.JSInterface;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Size {
    private int height;
    private int width;

    public Size(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public Size(String str) {
        int i;
        String[] split;
        int i2 = 0;
        if (str == null || (split = str.split(JSInterface.JSON_X)) == null || split.length != 2) {
            i = 0;
        } else {
            i = Math.max(parseInt(split[0], 0), 0);
            i2 = Math.max(parseInt(split[1], 0), 0);
        }
        this.width = i;
        this.height = i2;
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public String toString() {
        return this.width + JSInterface.JSON_X + this.height;
    }

    private static int parseInt(String str, int i) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return i;
        }
    }

    public JSONObject toJSONObject() {
        JSONObject jSONObject = new JSONObject();
        JSONUtils.put(jSONObject, "width", this.width);
        JSONUtils.put(jSONObject, "height", this.height);
        return jSONObject;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Size) {
            Size size = (Size) obj;
            return this.width == size.width && this.height == size.height;
        }
        return false;
    }
}
