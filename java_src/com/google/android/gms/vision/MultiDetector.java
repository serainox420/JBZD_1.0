package com.google.android.gms.vision;

import android.util.SparseArray;
import com.google.android.gms.vision.Detector;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class MultiDetector extends Detector<Object> {
    private List<Detector<? extends Object>> zzbOz;

    /* loaded from: classes2.dex */
    public static class Builder {
        private MultiDetector zzbOA = new MultiDetector();

        public Builder add(Detector<? extends Object> detector) {
            this.zzbOA.zzbOz.add(detector);
            return this;
        }

        public MultiDetector build() {
            if (this.zzbOA.zzbOz.size() == 0) {
                throw new RuntimeException("No underlying detectors added to MultiDetector.");
            }
            return this.zzbOA;
        }
    }

    private MultiDetector() {
        this.zzbOz = new ArrayList();
    }

    @Override // com.google.android.gms.vision.Detector
    public SparseArray<Object> detect(Frame frame) {
        SparseArray<Object> sparseArray = new SparseArray<>();
        for (Detector<? extends Object> detector : this.zzbOz) {
            SparseArray<? extends Object> detect = detector.detect(frame);
            for (int i = 0; i < detect.size(); i++) {
                int keyAt = detect.keyAt(i);
                if (sparseArray.get(keyAt) != null) {
                    throw new IllegalStateException(new StringBuilder(105).append("Detection ID overlap for id = ").append(keyAt).append(".  This means that one of the detectors is not using global IDs.").toString());
                }
                sparseArray.append(keyAt, detect.valueAt(i));
            }
        }
        return sparseArray;
    }

    @Override // com.google.android.gms.vision.Detector
    public boolean isOperational() {
        for (Detector<? extends Object> detector : this.zzbOz) {
            if (!detector.isOperational()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.vision.Detector
    public void receiveFrame(Frame frame) {
        for (Detector<? extends Object> detector : this.zzbOz) {
            detector.receiveFrame(frame);
        }
    }

    @Override // com.google.android.gms.vision.Detector
    public void release() {
        for (Detector<? extends Object> detector : this.zzbOz) {
            detector.release();
        }
        this.zzbOz.clear();
    }

    @Override // com.google.android.gms.vision.Detector
    public void setProcessor(Detector.Processor<Object> processor) {
        throw new UnsupportedOperationException("MultiDetector.setProcessor is not supported.  You should set a processor instance on each underlying detector instead.");
    }
}
