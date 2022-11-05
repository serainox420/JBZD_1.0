package com.google.android.gms.vision.face;

import android.content.Context;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.internal.zzbjq;
import com.google.android.gms.internal.zzbjt;
import com.google.android.gms.internal.zzbka;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.vision.Detector;
import com.google.android.gms.vision.Frame;
import com.google.android.gms.vision.zza;
import java.nio.ByteBuffer;
import java.util.HashSet;
/* loaded from: classes2.dex */
public final class FaceDetector extends Detector<Face> {
    public static final int ACCURATE_MODE = 1;
    public static final int ALL_CLASSIFICATIONS = 1;
    public static final int ALL_LANDMARKS = 1;
    public static final int FAST_MODE = 0;
    public static final int NO_CLASSIFICATIONS = 0;
    public static final int NO_LANDMARKS = 0;
    private final zza zzbOO;
    private final zzbjq zzbOP;
    private boolean zzbOQ;
    private final Object zzrJ;

    /* loaded from: classes2.dex */
    public static class Builder {
        private final Context mContext;
        private int zzbOR = 0;
        private boolean zzbOS = false;
        private int zzbOT = 0;
        private boolean zzbOU = true;
        private int zzaKF = 0;
        private float zzbOV = -1.0f;

        public Builder(Context context) {
            this.mContext = context;
        }

        public FaceDetector build() {
            zzbjt zzbjtVar = new zzbjt();
            zzbjtVar.mode = this.zzaKF;
            zzbjtVar.zzbPe = this.zzbOR;
            zzbjtVar.zzbPf = this.zzbOT;
            zzbjtVar.zzbPg = this.zzbOS;
            zzbjtVar.zzbPh = this.zzbOU;
            zzbjtVar.zzbPi = this.zzbOV;
            return new FaceDetector(new zzbjq(this.mContext, zzbjtVar));
        }

        public Builder setClassificationType(int i) {
            if (i == 0 || i == 1) {
                this.zzbOT = i;
                return this;
            }
            throw new IllegalArgumentException(new StringBuilder(40).append("Invalid classification type: ").append(i).toString());
        }

        public Builder setLandmarkType(int i) {
            if (i == 0 || i == 1) {
                this.zzbOR = i;
                return this;
            }
            throw new IllegalArgumentException(new StringBuilder(34).append("Invalid landmark type: ").append(i).toString());
        }

        public Builder setMinFaceSize(float f) {
            if (f < BitmapDescriptorFactory.HUE_RED || f > 1.0f) {
                throw new IllegalArgumentException(new StringBuilder(47).append("Invalid proportional face size: ").append(f).toString());
            }
            this.zzbOV = f;
            return this;
        }

        public Builder setMode(int i) {
            switch (i) {
                case 0:
                case 1:
                    this.zzaKF = i;
                    return this;
                default:
                    throw new IllegalArgumentException(new StringBuilder(25).append("Invalid mode: ").append(i).toString());
            }
        }

        public Builder setProminentFaceOnly(boolean z) {
            this.zzbOS = z;
            return this;
        }

        public Builder setTrackingEnabled(boolean z) {
            this.zzbOU = z;
            return this;
        }
    }

    private FaceDetector() {
        this.zzbOO = new zza();
        this.zzrJ = new Object();
        this.zzbOQ = true;
        throw new IllegalStateException("Default constructor called");
    }

    private FaceDetector(zzbjq zzbjqVar) {
        this.zzbOO = new zza();
        this.zzrJ = new Object();
        this.zzbOQ = true;
        this.zzbOP = zzbjqVar;
    }

    @Override // com.google.android.gms.vision.Detector
    public SparseArray<Face> detect(Frame frame) {
        Face[] zzb;
        if (frame == null) {
            throw new IllegalArgumentException("No frame supplied.");
        }
        ByteBuffer grayscaleImageData = frame.getGrayscaleImageData();
        synchronized (this.zzrJ) {
            if (!this.zzbOQ) {
                throw new RuntimeException("Cannot use detector after release()");
            }
            zzb = this.zzbOP.zzb(grayscaleImageData, zzbka.zzc(frame));
        }
        HashSet hashSet = new HashSet();
        SparseArray<Face> sparseArray = new SparseArray<>(zzb.length);
        int i = 0;
        for (Face face : zzb) {
            int id = face.getId();
            i = Math.max(i, id);
            if (hashSet.contains(Integer.valueOf(id))) {
                id = i + 1;
                i = id;
            }
            hashSet.add(Integer.valueOf(id));
            sparseArray.append(this.zzbOO.zznR(id), face);
        }
        return sparseArray;
    }

    protected void finalize() throws Throwable {
        try {
            synchronized (this.zzrJ) {
                if (this.zzbOQ) {
                    Log.w("FaceDetector", "FaceDetector was not released with FaceDetector.release()");
                    release();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.vision.Detector
    public boolean isOperational() {
        return this.zzbOP.isOperational();
    }

    @Override // com.google.android.gms.vision.Detector
    public void release() {
        super.release();
        synchronized (this.zzrJ) {
            if (!this.zzbOQ) {
                return;
            }
            this.zzbOP.zzTR();
            this.zzbOQ = false;
        }
    }

    @Override // com.google.android.gms.vision.Detector
    public boolean setFocus(int i) {
        boolean zzoh;
        int zznS = this.zzbOO.zznS(i);
        synchronized (this.zzrJ) {
            if (!this.zzbOQ) {
                throw new RuntimeException("Cannot use detector after release()");
            }
            zzoh = this.zzbOP.zzoh(zznS);
        }
        return zzoh;
    }
}
