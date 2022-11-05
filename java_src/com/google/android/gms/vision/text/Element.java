package com.google.android.gms.vision.text;

import android.graphics.Point;
import android.graphics.Rect;
import com.google.android.gms.internal.zzbkq;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class Element implements Text {
    private zzbkq zzbPm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Element(zzbkq zzbkqVar) {
        this.zzbPm = zzbkqVar;
    }

    @Override // com.google.android.gms.vision.text.Text
    public Rect getBoundingBox() {
        return zza.zza(this);
    }

    @Override // com.google.android.gms.vision.text.Text
    public List<? extends Text> getComponents() {
        return new ArrayList();
    }

    @Override // com.google.android.gms.vision.text.Text
    public Point[] getCornerPoints() {
        return zza.zza(this.zzbPm.zzbPx);
    }

    public String getLanguage() {
        return this.zzbPm.zzbPr;
    }

    @Override // com.google.android.gms.vision.text.Text
    public String getValue() {
        return this.zzbPm.zzbPA;
    }
}
