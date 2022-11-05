package com.google.android.gms.vision;

import android.util.SparseArray;
import com.google.android.gms.vision.Frame;
/* loaded from: classes2.dex */
public abstract class Detector<T> {
    private Object zzbOj = new Object();
    private Processor<T> zzbOk;

    /* loaded from: classes2.dex */
    public static class Detections<T> {
        private SparseArray<T> zzbOl;
        private Frame.Metadata zzbOm;
        private boolean zzbOn;

        public Detections(SparseArray<T> sparseArray, Frame.Metadata metadata, boolean z) {
            this.zzbOl = sparseArray;
            this.zzbOm = metadata;
            this.zzbOn = z;
        }

        public boolean detectorIsOperational() {
            return this.zzbOn;
        }

        public SparseArray<T> getDetectedItems() {
            return this.zzbOl;
        }

        public Frame.Metadata getFrameMetadata() {
            return this.zzbOm;
        }
    }

    /* loaded from: classes2.dex */
    public interface Processor<T> {
        void receiveDetections(Detections<T> detections);

        void release();
    }

    public abstract SparseArray<T> detect(Frame frame);

    public boolean isOperational() {
        return true;
    }

    public void receiveFrame(Frame frame) {
        synchronized (this.zzbOj) {
            if (this.zzbOk == null) {
                throw new IllegalStateException("Detector processor must first be set with setProcessor in order to receive detection results.");
            }
            Frame.Metadata metadata = new Frame.Metadata(frame.getMetadata());
            metadata.zzTO();
            this.zzbOk.receiveDetections(new Detections<>(detect(frame), metadata, isOperational()));
        }
    }

    public void release() {
        synchronized (this.zzbOj) {
            if (this.zzbOk != null) {
                this.zzbOk.release();
                this.zzbOk = null;
            }
        }
    }

    public boolean setFocus(int i) {
        return true;
    }

    public void setProcessor(Processor<T> processor) {
        this.zzbOk = processor;
    }
}
