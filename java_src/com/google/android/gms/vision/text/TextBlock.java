package com.google.android.gms.vision.text;

import android.graphics.Point;
import android.graphics.Rect;
import android.util.SparseArray;
import com.google.android.gms.internal.zzbkd;
import com.google.android.gms.internal.zzbkh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class TextBlock implements Text {
    private Point[] cornerPoints;
    private zzbkh[] zzbPp;
    private List<Line> zzbPq;
    private String zzbPr;
    private Rect zzbPs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TextBlock(SparseArray<zzbkh> sparseArray) {
        this.zzbPp = new zzbkh[sparseArray.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.zzbPp.length) {
                this.zzbPp[i2] = sparseArray.valueAt(i2);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private static Point[] zza(int i, int i2, int i3, int i4, zzbkd zzbkdVar) {
        int i5 = zzbkdVar.left;
        int i6 = zzbkdVar.top;
        double sin = Math.sin(Math.toRadians(zzbkdVar.zzbPv));
        double cos = Math.cos(Math.toRadians(zzbkdVar.zzbPv));
        Point[] pointArr = {new Point(i, i2), new Point(i3, i2), new Point(i3, i4), new Point(i, i4)};
        for (int i7 = 0; i7 < 4; i7++) {
            int i8 = (int) ((pointArr[i7].x * sin) + (pointArr[i7].y * cos));
            pointArr[i7].x = (int) ((pointArr[i7].x * cos) - (pointArr[i7].y * sin));
            pointArr[i7].y = i8;
            pointArr[i7].offset(i5, i6);
        }
        return pointArr;
    }

    private static Point[] zza(zzbkd zzbkdVar, zzbkd zzbkdVar2) {
        double sin = Math.sin(Math.toRadians(zzbkdVar2.zzbPv));
        double cos = Math.cos(Math.toRadians(zzbkdVar2.zzbPv));
        r6[0].offset(-zzbkdVar2.left, -zzbkdVar2.top);
        int i = (int) ((r6[0].x * cos) + (r6[0].y * sin));
        int i2 = (int) ((sin * (-r6[0].x)) + (cos * r6[0].y));
        r6[0].x = i;
        r6[0].y = i2;
        Point[] pointArr = {new Point(zzbkdVar.left, zzbkdVar.top), new Point(zzbkdVar.width + i, i2), new Point(zzbkdVar.width + i, zzbkdVar.height + i2), new Point(i, i2 + zzbkdVar.height)};
        return pointArr;
    }

    @Override // com.google.android.gms.vision.text.Text
    public Rect getBoundingBox() {
        if (this.zzbPs == null) {
            this.zzbPs = zza.zza(this);
        }
        return this.zzbPs;
    }

    @Override // com.google.android.gms.vision.text.Text
    public List<? extends Text> getComponents() {
        return zzTV();
    }

    @Override // com.google.android.gms.vision.text.Text
    public Point[] getCornerPoints() {
        if (this.cornerPoints == null) {
            zzTU();
        }
        return this.cornerPoints;
    }

    public String getLanguage() {
        zzbkh[] zzbkhVarArr;
        if (this.zzbPr != null) {
            return this.zzbPr;
        }
        HashMap hashMap = new HashMap();
        for (zzbkh zzbkhVar : this.zzbPp) {
            hashMap.put(zzbkhVar.zzbPr, Integer.valueOf((hashMap.containsKey(zzbkhVar.zzbPr) ? ((Integer) hashMap.get(zzbkhVar.zzbPr)).intValue() : 0) + 1));
        }
        this.zzbPr = (String) ((Map.Entry) Collections.max(hashMap.entrySet(), new Comparator<Map.Entry<String, Integer>>(this) { // from class: com.google.android.gms.vision.text.TextBlock.1
            @Override // java.util.Comparator
            /* renamed from: zza */
            public int compare(Map.Entry<String, Integer> entry, Map.Entry<String, Integer> entry2) {
                return entry.getValue().compareTo(entry2.getValue());
            }
        })).getKey();
        if (this.zzbPr == null || this.zzbPr.isEmpty()) {
            this.zzbPr = "und";
        }
        return this.zzbPr;
    }

    @Override // com.google.android.gms.vision.text.Text
    public String getValue() {
        if (this.zzbPp.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(this.zzbPp[0].zzbPA);
        for (int i = 1; i < this.zzbPp.length; i++) {
            sb.append("\n");
            sb.append(this.zzbPp[i].zzbPA);
        }
        return sb.toString();
    }

    void zzTU() {
        if (this.zzbPp.length == 0) {
            this.cornerPoints = new Point[0];
            return;
        }
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MIN_VALUE;
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MIN_VALUE;
        for (int i5 = 0; i5 < this.zzbPp.length; i5++) {
            Point[] zza = zza(this.zzbPp[i5].zzbPx, this.zzbPp[0].zzbPx);
            int i6 = 0;
            while (i6 < 4) {
                Point point = zza[i6];
                int min = Math.min(i3, point.x);
                int max = Math.max(i2, point.x);
                int min2 = Math.min(i, point.y);
                i6++;
                i4 = Math.max(i4, point.y);
                i = min2;
                i2 = max;
                i3 = min;
            }
        }
        this.cornerPoints = zza(i3, i, i2, i4, this.zzbPp[0].zzbPx);
    }

    List<Line> zzTV() {
        if (this.zzbPp.length == 0) {
            return new ArrayList(0);
        }
        if (this.zzbPq == null) {
            this.zzbPq = new ArrayList(this.zzbPp.length);
            for (zzbkh zzbkhVar : this.zzbPp) {
                this.zzbPq.add(new Line(zzbkhVar));
            }
        }
        return this.zzbPq;
    }
}
