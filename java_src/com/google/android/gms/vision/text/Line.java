package com.google.android.gms.vision.text;

import android.graphics.Point;
import android.graphics.Rect;
import com.google.android.gms.internal.zzbkh;
import com.google.android.gms.internal.zzbkq;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class Line implements Text {
    private zzbkh zzbPn;
    private List<Element> zzbPo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Line(zzbkh zzbkhVar) {
        this.zzbPn = zzbkhVar;
    }

    public float getAngle() {
        return this.zzbPn.zzbPx.zzbPv;
    }

    @Override // com.google.android.gms.vision.text.Text
    public Rect getBoundingBox() {
        return zza.zza(this);
    }

    @Override // com.google.android.gms.vision.text.Text
    public List<? extends Text> getComponents() {
        return zzTT();
    }

    @Override // com.google.android.gms.vision.text.Text
    public Point[] getCornerPoints() {
        return zza.zza(this.zzbPn.zzbPx);
    }

    public String getLanguage() {
        return this.zzbPn.zzbPr;
    }

    @Override // com.google.android.gms.vision.text.Text
    public String getValue() {
        return this.zzbPn.zzbPA;
    }

    public boolean isVertical() {
        return this.zzbPn.zzbPD;
    }

    List<Element> zzTT() {
        if (this.zzbPn.zzbPw.length == 0) {
            return new ArrayList(0);
        }
        if (this.zzbPo == null) {
            this.zzbPo = new ArrayList(this.zzbPn.zzbPw.length);
            for (zzbkq zzbkqVar : this.zzbPn.zzbPw) {
                this.zzbPo.add(new Element(zzbkqVar));
            }
        }
        return this.zzbPo;
    }
}
