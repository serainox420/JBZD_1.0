package com.google.android.gms.vision;

import android.graphics.Bitmap;
import android.graphics.Color;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public class Frame {
    public static final int ROTATION_0 = 0;
    public static final int ROTATION_180 = 2;
    public static final int ROTATION_270 = 3;
    public static final int ROTATION_90 = 1;
    private Bitmap mBitmap;
    private Metadata zzbOt;
    private ByteBuffer zzbOu;

    /* loaded from: classes2.dex */
    public static class Builder {
        private Frame zzbOv = new Frame();

        public Frame build() {
            if (this.zzbOv.zzbOu == null && this.zzbOv.mBitmap == null) {
                throw new IllegalStateException("Missing image data.  Call either setBitmap or setImageData to specify the image");
            }
            return this.zzbOv;
        }

        public Builder setBitmap(Bitmap bitmap) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            this.zzbOv.mBitmap = bitmap;
            Metadata metadata = this.zzbOv.getMetadata();
            metadata.zzrC = width;
            metadata.zzrD = height;
            return this;
        }

        public Builder setId(int i) {
            this.zzbOv.getMetadata().mId = i;
            return this;
        }

        public Builder setImageData(ByteBuffer byteBuffer, int i, int i2, int i3) {
            if (byteBuffer == null) {
                throw new IllegalArgumentException("Null image data supplied.");
            }
            if (byteBuffer.capacity() < i * i2) {
                throw new IllegalArgumentException("Invalid image data size.");
            }
            switch (i3) {
                case 16:
                case 17:
                case 842094169:
                    this.zzbOv.zzbOu = byteBuffer;
                    Metadata metadata = this.zzbOv.getMetadata();
                    metadata.zzrC = i;
                    metadata.zzrD = i2;
                    metadata.format = i3;
                    return this;
                default:
                    throw new IllegalArgumentException(new StringBuilder(37).append("Unsupported image format: ").append(i3).toString());
            }
        }

        public Builder setRotation(int i) {
            this.zzbOv.getMetadata().zzMA = i;
            return this;
        }

        public Builder setTimestampMillis(long j) {
            this.zzbOv.getMetadata().zzbdJ = j;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static class Metadata {
        private int format = -1;
        private int mId;
        private int zzMA;
        private long zzbdJ;
        private int zzrC;
        private int zzrD;

        public Metadata() {
        }

        public Metadata(Metadata metadata) {
            this.zzrC = metadata.getWidth();
            this.zzrD = metadata.getHeight();
            this.mId = metadata.getId();
            this.zzbdJ = metadata.getTimestampMillis();
            this.zzMA = metadata.getRotation();
        }

        public int getFormat() {
            return this.format;
        }

        public int getHeight() {
            return this.zzrD;
        }

        public int getId() {
            return this.mId;
        }

        public int getRotation() {
            return this.zzMA;
        }

        public long getTimestampMillis() {
            return this.zzbdJ;
        }

        public int getWidth() {
            return this.zzrC;
        }

        public void zzTO() {
            if (this.zzMA % 2 != 0) {
                int i = this.zzrC;
                this.zzrC = this.zzrD;
                this.zzrD = i;
            }
            this.zzMA = 0;
        }
    }

    private Frame() {
        this.zzbOt = new Metadata();
        this.zzbOu = null;
        this.mBitmap = null;
    }

    private ByteBuffer zzTN() {
        int width = this.mBitmap.getWidth();
        int height = this.mBitmap.getHeight();
        int[] iArr = new int[width * height];
        this.mBitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        byte[] bArr = new byte[width * height];
        for (int i = 0; i < iArr.length; i++) {
            bArr[i] = (byte) ((Color.red(iArr[i]) * 0.299f) + (Color.green(iArr[i]) * 0.587f) + (Color.blue(iArr[i]) * 0.114f));
        }
        return ByteBuffer.wrap(bArr);
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    public ByteBuffer getGrayscaleImageData() {
        return this.mBitmap != null ? zzTN() : this.zzbOu;
    }

    public Metadata getMetadata() {
        return this.zzbOt;
    }
}
