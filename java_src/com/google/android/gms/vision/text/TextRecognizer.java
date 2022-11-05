package com.google.android.gms.vision.text;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.util.SparseArray;
import com.google.android.gms.internal.zzbka;
import com.google.android.gms.internal.zzbkc;
import com.google.android.gms.internal.zzbkh;
import com.google.android.gms.internal.zzbkj;
import com.google.android.gms.internal.zzbkn;
import com.google.android.gms.internal.zzbko;
import com.google.android.gms.vision.Detector;
import com.google.android.gms.vision.Frame;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public final class TextRecognizer extends Detector<TextBlock> {
    private final zzbkn zzbPt;

    /* loaded from: classes2.dex */
    public static class Builder {
        private Context mContext;
        private zzbko zzbPu = new zzbko();

        public Builder(Context context) {
            this.mContext = context;
        }

        public TextRecognizer build() {
            return new TextRecognizer(new zzbkn(this.mContext, this.zzbPu));
        }
    }

    private TextRecognizer() {
        throw new IllegalStateException("Default constructor called");
    }

    private TextRecognizer(zzbkn zzbknVar) {
        this.zzbPt = zzbknVar;
    }

    private Bitmap zza(ByteBuffer byteBuffer, int i, int i2, int i3) {
        byte[] bArr;
        if (!byteBuffer.hasArray() || byteBuffer.arrayOffset() != 0) {
            bArr = new byte[byteBuffer.capacity()];
            byteBuffer.get(bArr);
        } else {
            bArr = byteBuffer.array();
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        new YuvImage(bArr, i, i2, i3, null).compressToJpeg(new Rect(0, 0, i2, i3), 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
    }

    private Rect zza(Rect rect, int i, int i2, zzbka zzbkaVar) {
        switch (zzbkaVar.rotation) {
            case 1:
                return new Rect(i2 - rect.bottom, rect.left, i2 - rect.top, rect.right);
            case 2:
                return new Rect(i - rect.right, i2 - rect.bottom, i - rect.left, i2 - rect.top);
            case 3:
                return new Rect(rect.top, i - rect.right, rect.bottom, i - rect.left);
            default:
                return rect;
        }
    }

    private SparseArray<TextBlock> zza(zzbkh[] zzbkhVarArr) {
        SparseArray sparseArray = new SparseArray();
        for (zzbkh zzbkhVar : zzbkhVarArr) {
            SparseArray sparseArray2 = (SparseArray) sparseArray.get(zzbkhVar.zzbPE);
            if (sparseArray2 == null) {
                sparseArray2 = new SparseArray();
                sparseArray.append(zzbkhVar.zzbPE, sparseArray2);
            }
            sparseArray2.append(zzbkhVar.zzbPF, zzbkhVar);
        }
        SparseArray<TextBlock> sparseArray3 = new SparseArray<>(sparseArray.size());
        for (int i = 0; i < sparseArray.size(); i++) {
            sparseArray3.append(sparseArray.keyAt(i), new TextBlock((SparseArray) sparseArray.valueAt(i)));
        }
        return sparseArray3;
    }

    @Override // com.google.android.gms.vision.Detector
    public SparseArray<TextBlock> detect(Frame frame) {
        return zza(frame, new zzbkj(1, new Rect()));
    }

    @Override // com.google.android.gms.vision.Detector
    public boolean isOperational() {
        return this.zzbPt.isOperational();
    }

    @Override // com.google.android.gms.vision.Detector
    public void release() {
        super.release();
        this.zzbPt.zzTR();
    }

    public SparseArray<TextBlock> zza(Frame frame, zzbkj zzbkjVar) {
        Bitmap zza;
        if (frame == null) {
            throw new IllegalArgumentException("No frame supplied.");
        }
        zzbka zzc = zzbka.zzc(frame);
        if (frame.getBitmap() != null) {
            zza = frame.getBitmap();
        } else {
            zza = zza(frame.getGrayscaleImageData(), frame.getMetadata().getFormat(), zzc.width, zzc.height);
        }
        Bitmap zzb = zzbkc.zzb(zza, zzc);
        if (!zzbkjVar.zzbPG.isEmpty()) {
            zzbkjVar.zzbPG.set(zza(zzbkjVar.zzbPG, frame.getMetadata().getWidth(), frame.getMetadata().getHeight(), zzc));
        }
        zzc.rotation = 0;
        return zza(this.zzbPt.zza(zzb, zzc, zzbkjVar));
    }
}
