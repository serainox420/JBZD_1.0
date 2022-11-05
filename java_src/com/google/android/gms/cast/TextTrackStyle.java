package com.google.android.gms.cast;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.accessibility.CaptioningManager;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzq;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.internal.zzyr;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class TextTrackStyle extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final int COLOR_UNSPECIFIED = 0;
    public static final Parcelable.Creator<TextTrackStyle> CREATOR = new zzn();
    public static final float DEFAULT_FONT_SCALE = 1.0f;
    public static final int EDGE_TYPE_DEPRESSED = 4;
    public static final int EDGE_TYPE_DROP_SHADOW = 2;
    public static final int EDGE_TYPE_NONE = 0;
    public static final int EDGE_TYPE_OUTLINE = 1;
    public static final int EDGE_TYPE_RAISED = 3;
    public static final int EDGE_TYPE_UNSPECIFIED = -1;
    public static final int FONT_FAMILY_CASUAL = 4;
    public static final int FONT_FAMILY_CURSIVE = 5;
    public static final int FONT_FAMILY_MONOSPACED_SANS_SERIF = 1;
    public static final int FONT_FAMILY_MONOSPACED_SERIF = 3;
    public static final int FONT_FAMILY_SANS_SERIF = 0;
    public static final int FONT_FAMILY_SERIF = 2;
    public static final int FONT_FAMILY_SMALL_CAPITALS = 6;
    public static final int FONT_FAMILY_UNSPECIFIED = -1;
    public static final int FONT_STYLE_BOLD = 1;
    public static final int FONT_STYLE_BOLD_ITALIC = 3;
    public static final int FONT_STYLE_ITALIC = 2;
    public static final int FONT_STYLE_NORMAL = 0;
    public static final int FONT_STYLE_UNSPECIFIED = -1;
    public static final int WINDOW_TYPE_NONE = 0;
    public static final int WINDOW_TYPE_NORMAL = 1;
    public static final int WINDOW_TYPE_ROUNDED = 2;
    public static final int WINDOW_TYPE_UNSPECIFIED = -1;
    private int mBackgroundColor;
    String zzamN;
    private JSONObject zzamO;
    private float zzapJ;
    private int zzapK;
    private int zzapL;
    private int zzapM;
    private int zzapN;
    private int zzapO;
    private int zzapP;
    private String zzapQ;
    private int zzapR;
    private int zzapS;

    public TextTrackStyle() {
        this(1.0f, 0, 0, -1, 0, -1, 0, 0, null, -1, -1, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TextTrackStyle(float f, int i, int i2, int i3, int i4, int i5, int i6, int i7, String str, int i8, int i9, String str2) {
        this.zzapJ = f;
        this.zzapK = i;
        this.mBackgroundColor = i2;
        this.zzapL = i3;
        this.zzapM = i4;
        this.zzapN = i5;
        this.zzapO = i6;
        this.zzapP = i7;
        this.zzapQ = str;
        this.zzapR = i8;
        this.zzapS = i9;
        this.zzamN = str2;
        if (this.zzamN == null) {
            this.zzamO = null;
            return;
        }
        try {
            this.zzamO = new JSONObject(this.zzamN);
        } catch (JSONException e) {
            this.zzamO = null;
            this.zzamN = null;
        }
    }

    @TargetApi(19)
    public static TextTrackStyle fromSystemSettings(Context context) {
        TextTrackStyle textTrackStyle = new TextTrackStyle();
        if (!zzt.zzzl()) {
            return textTrackStyle;
        }
        CaptioningManager captioningManager = (CaptioningManager) context.getSystemService("captioning");
        textTrackStyle.setFontScale(captioningManager.getFontScale());
        CaptioningManager.CaptionStyle userStyle = captioningManager.getUserStyle();
        textTrackStyle.setBackgroundColor(userStyle.backgroundColor);
        textTrackStyle.setForegroundColor(userStyle.foregroundColor);
        switch (userStyle.edgeType) {
            case 1:
                textTrackStyle.setEdgeType(1);
                break;
            case 2:
                textTrackStyle.setEdgeType(2);
                break;
            default:
                textTrackStyle.setEdgeType(0);
                break;
        }
        textTrackStyle.setEdgeColor(userStyle.edgeColor);
        Typeface typeface = userStyle.getTypeface();
        if (typeface != null) {
            if (Typeface.MONOSPACE.equals(typeface)) {
                textTrackStyle.setFontGenericFamily(1);
            } else if (Typeface.SANS_SERIF.equals(typeface)) {
                textTrackStyle.setFontGenericFamily(0);
            } else if (Typeface.SERIF.equals(typeface)) {
                textTrackStyle.setFontGenericFamily(2);
            } else {
                textTrackStyle.setFontGenericFamily(0);
            }
            boolean isBold = typeface.isBold();
            boolean isItalic = typeface.isItalic();
            if (isBold && isItalic) {
                textTrackStyle.setFontStyle(3);
            } else if (isBold) {
                textTrackStyle.setFontStyle(1);
            } else if (isItalic) {
                textTrackStyle.setFontStyle(2);
            } else {
                textTrackStyle.setFontStyle(0);
            }
        }
        return textTrackStyle;
    }

    private String zzab(int i) {
        return String.format("#%02X%02X%02X%02X", Integer.valueOf(Color.red(i)), Integer.valueOf(Color.green(i)), Integer.valueOf(Color.blue(i)), Integer.valueOf(Color.alpha(i)));
    }

    private int zzcJ(String str) {
        if (str != null && str.length() == 9 && str.charAt(0) == '#') {
            try {
                return Color.argb(Integer.parseInt(str.substring(7, 9), 16), Integer.parseInt(str.substring(1, 3), 16), Integer.parseInt(str.substring(3, 5), 16), Integer.parseInt(str.substring(5, 7), 16));
            } catch (NumberFormatException e) {
                return 0;
            }
        }
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextTrackStyle)) {
            return false;
        }
        TextTrackStyle textTrackStyle = (TextTrackStyle) obj;
        if ((this.zzamO == null) != (textTrackStyle.zzamO == null)) {
            return false;
        }
        if (this.zzamO != null && textTrackStyle.zzamO != null && !zzq.zze(this.zzamO, textTrackStyle.zzamO)) {
            return false;
        }
        if (this.zzapJ != textTrackStyle.zzapJ || this.zzapK != textTrackStyle.zzapK || this.mBackgroundColor != textTrackStyle.mBackgroundColor || this.zzapL != textTrackStyle.zzapL || this.zzapM != textTrackStyle.zzapM || this.zzapN != textTrackStyle.zzapN || this.zzapP != textTrackStyle.zzapP || !zzyr.zza(this.zzapQ, textTrackStyle.zzapQ) || this.zzapR != textTrackStyle.zzapR || this.zzapS != textTrackStyle.zzapS) {
            z = false;
        }
        return z;
    }

    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public JSONObject getCustomData() {
        return this.zzamO;
    }

    public int getEdgeColor() {
        return this.zzapM;
    }

    public int getEdgeType() {
        return this.zzapL;
    }

    public String getFontFamily() {
        return this.zzapQ;
    }

    public int getFontGenericFamily() {
        return this.zzapR;
    }

    public float getFontScale() {
        return this.zzapJ;
    }

    public int getFontStyle() {
        return this.zzapS;
    }

    public int getForegroundColor() {
        return this.zzapK;
    }

    public int getWindowColor() {
        return this.zzapO;
    }

    public int getWindowCornerRadius() {
        return this.zzapP;
    }

    public int getWindowType() {
        return this.zzapN;
    }

    public int hashCode() {
        return zzaa.hashCode(Float.valueOf(this.zzapJ), Integer.valueOf(this.zzapK), Integer.valueOf(this.mBackgroundColor), Integer.valueOf(this.zzapL), Integer.valueOf(this.zzapM), Integer.valueOf(this.zzapN), Integer.valueOf(this.zzapO), Integer.valueOf(this.zzapP), this.zzapQ, Integer.valueOf(this.zzapR), Integer.valueOf(this.zzapS), String.valueOf(this.zzamO));
    }

    public void setBackgroundColor(int i) {
        this.mBackgroundColor = i;
    }

    public void setCustomData(JSONObject jSONObject) {
        this.zzamO = jSONObject;
    }

    public void setEdgeColor(int i) {
        this.zzapM = i;
    }

    public void setEdgeType(int i) {
        if (i < 0 || i > 4) {
            throw new IllegalArgumentException("invalid edgeType");
        }
        this.zzapL = i;
    }

    public void setFontFamily(String str) {
        this.zzapQ = str;
    }

    public void setFontGenericFamily(int i) {
        if (i < 0 || i > 6) {
            throw new IllegalArgumentException("invalid fontGenericFamily");
        }
        this.zzapR = i;
    }

    public void setFontScale(float f) {
        this.zzapJ = f;
    }

    public void setFontStyle(int i) {
        if (i < 0 || i > 3) {
            throw new IllegalArgumentException("invalid fontStyle");
        }
        this.zzapS = i;
    }

    public void setForegroundColor(int i) {
        this.zzapK = i;
    }

    public void setWindowColor(int i) {
        this.zzapO = i;
    }

    public void setWindowCornerRadius(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("invalid windowCornerRadius");
        }
        this.zzapP = i;
    }

    public void setWindowType(int i) {
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException("invalid windowType");
        }
        this.zzapN = i;
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("fontScale", this.zzapJ);
            if (this.zzapK != 0) {
                jSONObject.put("foregroundColor", zzab(this.zzapK));
            }
            if (this.mBackgroundColor != 0) {
                jSONObject.put("backgroundColor", zzab(this.mBackgroundColor));
            }
            switch (this.zzapL) {
                case 0:
                    jSONObject.put("edgeType", "NONE");
                    break;
                case 1:
                    jSONObject.put("edgeType", "OUTLINE");
                    break;
                case 2:
                    jSONObject.put("edgeType", "DROP_SHADOW");
                    break;
                case 3:
                    jSONObject.put("edgeType", "RAISED");
                    break;
                case 4:
                    jSONObject.put("edgeType", "DEPRESSED");
                    break;
            }
            if (this.zzapM != 0) {
                jSONObject.put("edgeColor", zzab(this.zzapM));
            }
            switch (this.zzapN) {
                case 0:
                    jSONObject.put("windowType", "NONE");
                    break;
                case 1:
                    jSONObject.put("windowType", "NORMAL");
                    break;
                case 2:
                    jSONObject.put("windowType", "ROUNDED_CORNERS");
                    break;
            }
            if (this.zzapO != 0) {
                jSONObject.put("windowColor", zzab(this.zzapO));
            }
            if (this.zzapN == 2) {
                jSONObject.put("windowRoundedCornerRadius", this.zzapP);
            }
            if (this.zzapQ != null) {
                jSONObject.put("fontFamily", this.zzapQ);
            }
            switch (this.zzapR) {
                case 0:
                    jSONObject.put("fontGenericFamily", "SANS_SERIF");
                    break;
                case 1:
                    jSONObject.put("fontGenericFamily", "MONOSPACED_SANS_SERIF");
                    break;
                case 2:
                    jSONObject.put("fontGenericFamily", "SERIF");
                    break;
                case 3:
                    jSONObject.put("fontGenericFamily", "MONOSPACED_SERIF");
                    break;
                case 4:
                    jSONObject.put("fontGenericFamily", "CASUAL");
                    break;
                case 5:
                    jSONObject.put("fontGenericFamily", "CURSIVE");
                    break;
                case 6:
                    jSONObject.put("fontGenericFamily", "SMALL_CAPITALS");
                    break;
            }
            switch (this.zzapS) {
                case 0:
                    jSONObject.put("fontStyle", "NORMAL");
                    break;
                case 1:
                    jSONObject.put("fontStyle", "BOLD");
                    break;
                case 2:
                    jSONObject.put("fontStyle", "ITALIC");
                    break;
                case 3:
                    jSONObject.put("fontStyle", "BOLD_ITALIC");
                    break;
            }
            if (this.zzamO != null) {
                jSONObject.put("customData", this.zzamO);
            }
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        this.zzamN = this.zzamO == null ? null : this.zzamO.toString();
        zzn.zza(this, parcel, i);
    }

    public void zzn(JSONObject jSONObject) throws JSONException {
        this.zzapJ = (float) jSONObject.optDouble("fontScale", 1.0d);
        this.zzapK = zzcJ(jSONObject.optString("foregroundColor"));
        this.mBackgroundColor = zzcJ(jSONObject.optString("backgroundColor"));
        if (jSONObject.has("edgeType")) {
            String string = jSONObject.getString("edgeType");
            if ("NONE".equals(string)) {
                this.zzapL = 0;
            } else if ("OUTLINE".equals(string)) {
                this.zzapL = 1;
            } else if ("DROP_SHADOW".equals(string)) {
                this.zzapL = 2;
            } else if ("RAISED".equals(string)) {
                this.zzapL = 3;
            } else if ("DEPRESSED".equals(string)) {
                this.zzapL = 4;
            }
        }
        this.zzapM = zzcJ(jSONObject.optString("edgeColor"));
        if (jSONObject.has("windowType")) {
            String string2 = jSONObject.getString("windowType");
            if ("NONE".equals(string2)) {
                this.zzapN = 0;
            } else if ("NORMAL".equals(string2)) {
                this.zzapN = 1;
            } else if ("ROUNDED_CORNERS".equals(string2)) {
                this.zzapN = 2;
            }
        }
        this.zzapO = zzcJ(jSONObject.optString("windowColor"));
        if (this.zzapN == 2) {
            this.zzapP = jSONObject.optInt("windowRoundedCornerRadius", 0);
        }
        this.zzapQ = jSONObject.optString("fontFamily", null);
        if (jSONObject.has("fontGenericFamily")) {
            String string3 = jSONObject.getString("fontGenericFamily");
            if ("SANS_SERIF".equals(string3)) {
                this.zzapR = 0;
            } else if ("MONOSPACED_SANS_SERIF".equals(string3)) {
                this.zzapR = 1;
            } else if ("SERIF".equals(string3)) {
                this.zzapR = 2;
            } else if ("MONOSPACED_SERIF".equals(string3)) {
                this.zzapR = 3;
            } else if ("CASUAL".equals(string3)) {
                this.zzapR = 4;
            } else if ("CURSIVE".equals(string3)) {
                this.zzapR = 5;
            } else if ("SMALL_CAPITALS".equals(string3)) {
                this.zzapR = 6;
            }
        }
        if (jSONObject.has("fontStyle")) {
            String string4 = jSONObject.getString("fontStyle");
            if ("NORMAL".equals(string4)) {
                this.zzapS = 0;
            } else if ("BOLD".equals(string4)) {
                this.zzapS = 1;
            } else if ("ITALIC".equals(string4)) {
                this.zzapS = 2;
            } else if ("BOLD_ITALIC".equals(string4)) {
                this.zzapS = 3;
            }
        }
        this.zzamO = jSONObject.optJSONObject("customData");
    }
}
