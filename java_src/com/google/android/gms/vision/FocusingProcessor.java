package com.google.android.gms.vision;

import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.vision.Detector;
/* loaded from: classes2.dex */
public abstract class FocusingProcessor<T> implements Detector.Processor<T> {
    private Detector<T> zzbNZ;
    private Tracker<T> zzbOo;
    private int zzbOr;
    private int zzbOp = 3;
    private boolean zzbOq = false;
    private int zzbOs = 0;

    public FocusingProcessor(Detector<T> detector, Tracker<T> tracker) {
        this.zzbNZ = detector;
        this.zzbOo = tracker;
    }

    @Override // com.google.android.gms.vision.Detector.Processor
    public void receiveDetections(Detector.Detections<T> detections) {
        SparseArray<T> detectedItems = detections.getDetectedItems();
        if (detectedItems.size() == 0) {
            if (this.zzbOs == this.zzbOp) {
                this.zzbOo.onDone();
                this.zzbOq = false;
            } else {
                this.zzbOo.onMissing(detections);
            }
            this.zzbOs++;
            return;
        }
        this.zzbOs = 0;
        if (this.zzbOq) {
            T t = detectedItems.get(this.zzbOr);
            if (t != null) {
                this.zzbOo.onUpdate(detections, t);
                return;
            } else {
                this.zzbOo.onDone();
                this.zzbOq = false;
            }
        }
        int selectFocus = selectFocus(detections);
        T t2 = detectedItems.get(selectFocus);
        if (t2 == null) {
            Log.w("FocusingProcessor", new StringBuilder(35).append("Invalid focus selected: ").append(selectFocus).toString());
            return;
        }
        this.zzbOq = true;
        this.zzbOr = selectFocus;
        this.zzbNZ.setFocus(this.zzbOr);
        this.zzbOo.onNewItem(this.zzbOr, t2);
        this.zzbOo.onUpdate(detections, t2);
    }

    @Override // com.google.android.gms.vision.Detector.Processor
    public void release() {
        this.zzbOo.onDone();
    }

    public abstract int selectFocus(Detector.Detections<T> detections);

    /* JADX INFO: Access modifiers changed from: protected */
    public void zznQ(int i) {
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuilder(28).append("Invalid max gap: ").append(i).toString());
        }
        this.zzbOp = i;
    }
}
