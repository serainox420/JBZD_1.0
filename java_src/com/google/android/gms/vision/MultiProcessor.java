package com.google.android.gms.vision;

import android.util.SparseArray;
import com.google.android.gms.vision.Detector;
import java.util.HashSet;
/* loaded from: classes2.dex */
public class MultiProcessor<T> implements Detector.Processor<T> {
    private Factory<T> zzbOB;
    private SparseArray<zza> zzbOC;
    private int zzbOp;

    /* loaded from: classes2.dex */
    public static class Builder<T> {
        private MultiProcessor<T> zzbOD = new MultiProcessor<>();

        public Builder(Factory<T> factory) {
            if (factory == null) {
                throw new IllegalArgumentException("No factory supplied.");
            }
            ((MultiProcessor) this.zzbOD).zzbOB = factory;
        }

        public MultiProcessor<T> build() {
            return this.zzbOD;
        }

        public Builder<T> setMaxGapFrames(int i) {
            if (i < 0) {
                throw new IllegalArgumentException(new StringBuilder(28).append("Invalid max gap: ").append(i).toString());
            }
            ((MultiProcessor) this.zzbOD).zzbOp = i;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public interface Factory<T> {
        Tracker<T> create(T t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza {
        private Tracker<T> zzbOo;
        private int zzbOs;

        private zza(MultiProcessor multiProcessor) {
            this.zzbOs = 0;
        }

        static /* synthetic */ int zzb(zza zzaVar) {
            int i = zzaVar.zzbOs;
            zzaVar.zzbOs = i + 1;
            return i;
        }
    }

    private MultiProcessor() {
        this.zzbOC = new SparseArray<>();
        this.zzbOp = 3;
    }

    private void zza(Detector.Detections<T> detections) {
        SparseArray<T> detectedItems = detections.getDetectedItems();
        for (int i = 0; i < detectedItems.size(); i++) {
            int keyAt = detectedItems.keyAt(i);
            T valueAt = detectedItems.valueAt(i);
            if (this.zzbOC.get(keyAt) == null) {
                zza zzaVar = new zza();
                zzaVar.zzbOo = this.zzbOB.create(valueAt);
                zzaVar.zzbOo.onNewItem(keyAt, valueAt);
                this.zzbOC.append(keyAt, zzaVar);
            }
        }
    }

    private void zzb(Detector.Detections<T> detections) {
        SparseArray<T> detectedItems = detections.getDetectedItems();
        HashSet<Integer> hashSet = new HashSet();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.zzbOC.size()) {
                break;
            }
            int keyAt = this.zzbOC.keyAt(i2);
            if (detectedItems.get(keyAt) == null) {
                zza valueAt = this.zzbOC.valueAt(i2);
                zza.zzb(valueAt);
                if (valueAt.zzbOs >= this.zzbOp) {
                    valueAt.zzbOo.onDone();
                    hashSet.add(Integer.valueOf(keyAt));
                } else {
                    valueAt.zzbOo.onMissing(detections);
                }
            }
            i = i2 + 1;
        }
        for (Integer num : hashSet) {
            this.zzbOC.delete(num.intValue());
        }
    }

    private void zzc(Detector.Detections<T> detections) {
        SparseArray<T> detectedItems = detections.getDetectedItems();
        for (int i = 0; i < detectedItems.size(); i++) {
            int keyAt = detectedItems.keyAt(i);
            T valueAt = detectedItems.valueAt(i);
            zza zzaVar = this.zzbOC.get(keyAt);
            zzaVar.zzbOs = 0;
            zzaVar.zzbOo.onUpdate(detections, valueAt);
        }
    }

    @Override // com.google.android.gms.vision.Detector.Processor
    public void receiveDetections(Detector.Detections<T> detections) {
        zza(detections);
        zzb(detections);
        zzc(detections);
    }

    @Override // com.google.android.gms.vision.Detector.Processor
    public void release() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.zzbOC.size()) {
                this.zzbOC.clear();
                return;
            } else {
                this.zzbOC.valueAt(i2).zzbOo.onDone();
                i = i2 + 1;
            }
        }
    }
}
