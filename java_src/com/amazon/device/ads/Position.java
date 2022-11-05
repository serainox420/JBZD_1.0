package com.amazon.device.ads;

import com.openx.view.mraid.JSInterface;
import org.json.JSONObject;
/* loaded from: classes.dex */
class Position {
    private Size size;
    private int x;
    private int y;

    public Position() {
        this.size = new Size(0, 0);
        this.x = 0;
        this.y = 0;
    }

    public Position(Size size, int i, int i2) {
        this.size = size;
        this.x = i;
        this.y = i2;
    }

    public Size getSize() {
        return this.size;
    }

    public void setSize(Size size) {
        this.size = size;
    }

    public int getX() {
        return this.x;
    }

    public void setX(int i) {
        this.x = i;
    }

    public int getY() {
        return this.y;
    }

    public void setY(int i) {
        this.y = i;
    }

    public JSONObject toJSONObject() {
        JSONObject jSONObject = this.size.toJSONObject();
        JSONUtils.put(jSONObject, JSInterface.JSON_X, this.x);
        JSONUtils.put(jSONObject, JSInterface.JSON_Y, this.y);
        return jSONObject;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Position) {
            Position position = (Position) obj;
            return this.size.equals(position.size) && this.x == position.x && this.y == position.y;
        }
        return false;
    }
}
