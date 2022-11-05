package com.google.android.gms.vision;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.ImageFormat;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.WindowManager;
import com.facebook.imagepipeline.common.RotationOptions;
import com.google.android.gms.common.images.Size;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.vision.Frame;
import com.openx.view.mraid.JSInterface;
import java.io.IOException;
import java.lang.Thread;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class CameraSource {
    @SuppressLint({"InlinedApi"})
    public static final int CAMERA_FACING_BACK = 0;
    @SuppressLint({"InlinedApi"})
    public static final int CAMERA_FACING_FRONT = 1;
    private Context mContext;
    private int zzMA;
    private final Object zzbNM;
    private Camera zzbNN;
    private int zzbNO;
    private Size zzbNP;
    private float zzbNQ;
    private int zzbNR;
    private int zzbNS;
    private boolean zzbNT;
    private SurfaceTexture zzbNU;
    private boolean zzbNV;
    private Thread zzbNW;
    private zzb zzbNX;
    private Map<byte[], ByteBuffer> zzbNY;

    /* loaded from: classes2.dex */
    public static class Builder {
        private final Detector<?> zzbNZ;
        private CameraSource zzbOa = new CameraSource();

        public Builder(Context context, Detector<?> detector) {
            if (context == null) {
                throw new IllegalArgumentException("No context supplied.");
            }
            if (detector == null) {
                throw new IllegalArgumentException("No detector supplied.");
            }
            this.zzbNZ = detector;
            this.zzbOa.mContext = context;
        }

        public CameraSource build() {
            CameraSource cameraSource = this.zzbOa;
            CameraSource cameraSource2 = this.zzbOa;
            cameraSource2.getClass();
            cameraSource.zzbNX = new zzb(this.zzbNZ);
            return this.zzbOa;
        }

        public Builder setAutoFocusEnabled(boolean z) {
            this.zzbOa.zzbNT = z;
            return this;
        }

        public Builder setFacing(int i) {
            if (i == 0 || i == 1) {
                this.zzbOa.zzbNO = i;
                return this;
            }
            throw new IllegalArgumentException(new StringBuilder(27).append("Invalid camera: ").append(i).toString());
        }

        public Builder setRequestedFps(float f) {
            if (f <= BitmapDescriptorFactory.HUE_RED) {
                throw new IllegalArgumentException(new StringBuilder(28).append("Invalid fps: ").append(f).toString());
            }
            this.zzbOa.zzbNQ = f;
            return this;
        }

        public Builder setRequestedPreviewSize(int i, int i2) {
            if (i <= 0 || i > 1000000 || i2 <= 0 || i2 > 1000000) {
                throw new IllegalArgumentException(new StringBuilder(45).append("Invalid preview size: ").append(i).append(JSInterface.JSON_X).append(i2).toString());
            }
            this.zzbOa.zzbNR = i;
            this.zzbOa.zzbNS = i2;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public interface PictureCallback {
        void onPictureTaken(byte[] bArr);
    }

    /* loaded from: classes2.dex */
    public interface ShutterCallback {
        void onShutter();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza implements Camera.PreviewCallback {
        private zza() {
        }

        @Override // android.hardware.Camera.PreviewCallback
        public void onPreviewFrame(byte[] bArr, Camera camera) {
            CameraSource.this.zzbNX.zza(bArr, camera);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzb implements Runnable {
        static final /* synthetic */ boolean $assertionsDisabled;
        private Detector<?> zzbNZ;
        private long zzbOc;
        private ByteBuffer zzbOe;
        private long zzafe = SystemClock.elapsedRealtime();
        private final Object zzrJ = new Object();
        private boolean mActive = true;
        private int zzbOd = 0;

        static {
            $assertionsDisabled = !CameraSource.class.desiredAssertionStatus();
        }

        zzb(Detector<?> detector) {
            this.zzbNZ = detector;
        }

        @SuppressLint({"Assert"})
        void release() {
            if ($assertionsDisabled || CameraSource.this.zzbNW.getState() == Thread.State.TERMINATED) {
                this.zzbNZ.release();
                this.zzbNZ = null;
                return;
            }
            throw new AssertionError();
        }

        @Override // java.lang.Runnable
        @SuppressLint({"InlinedApi"})
        public void run() {
            Frame build;
            while (true) {
                synchronized (this.zzrJ) {
                    while (this.mActive && this.zzbOe == null) {
                        try {
                            this.zzrJ.wait();
                        } catch (InterruptedException e) {
                            Log.d("CameraSource", "Frame processing loop terminated.", e);
                            return;
                        }
                    }
                    if (!this.mActive) {
                        return;
                    }
                    build = new Frame.Builder().setImageData(this.zzbOe, CameraSource.this.zzbNP.getWidth(), CameraSource.this.zzbNP.getHeight(), 17).setId(this.zzbOd).setTimestampMillis(this.zzbOc).setRotation(CameraSource.this.zzMA).build();
                    ByteBuffer byteBuffer = this.zzbOe;
                    this.zzbOe = null;
                }
                try {
                    this.zzbNZ.receiveFrame(build);
                } finally {
                    try {
                    } finally {
                    }
                }
            }
        }

        void setActive(boolean z) {
            synchronized (this.zzrJ) {
                this.mActive = z;
                this.zzrJ.notifyAll();
            }
        }

        void zza(byte[] bArr, Camera camera) {
            synchronized (this.zzrJ) {
                if (this.zzbOe != null) {
                    camera.addCallbackBuffer(this.zzbOe.array());
                    this.zzbOe = null;
                }
                if (!CameraSource.this.zzbNY.containsKey(bArr)) {
                    Log.d("CameraSource", "Skipping frame. Could not find ByteBuffer associated with the image data from the camera.");
                    return;
                }
                this.zzbOc = SystemClock.elapsedRealtime() - this.zzafe;
                this.zzbOd++;
                this.zzbOe = (ByteBuffer) CameraSource.this.zzbNY.get(bArr);
                this.zzrJ.notifyAll();
            }
        }
    }

    /* loaded from: classes2.dex */
    private class zzc implements Camera.PictureCallback {
        private PictureCallback zzbOf;

        private zzc() {
        }

        @Override // android.hardware.Camera.PictureCallback
        public void onPictureTaken(byte[] bArr, Camera camera) {
            if (this.zzbOf != null) {
                this.zzbOf.onPictureTaken(bArr);
            }
            synchronized (CameraSource.this.zzbNM) {
                if (CameraSource.this.zzbNN != null) {
                    CameraSource.this.zzbNN.startPreview();
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    private class zzd implements Camera.ShutterCallback {
        private ShutterCallback zzbOg;

        private zzd(CameraSource cameraSource) {
        }

        @Override // android.hardware.Camera.ShutterCallback
        public void onShutter() {
            if (this.zzbOg != null) {
                this.zzbOg.onShutter();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zze {
        private Size zzbOh;
        private Size zzbOi;

        public zze(Camera.Size size, Camera.Size size2) {
            this.zzbOh = new Size(size.width, size.height);
            if (size2 != null) {
                this.zzbOi = new Size(size2.width, size2.height);
            }
        }

        public Size zzTL() {
            return this.zzbOh;
        }

        public Size zzTM() {
            return this.zzbOi;
        }
    }

    private CameraSource() {
        this.zzbNM = new Object();
        this.zzbNO = 0;
        this.zzbNQ = 30.0f;
        this.zzbNR = 1024;
        this.zzbNS = 768;
        this.zzbNT = false;
        this.zzbNY = new HashMap();
    }

    @SuppressLint({"InlinedApi"})
    private Camera zzTK() {
        int zznP = zznP(this.zzbNO);
        if (zznP == -1) {
            throw new RuntimeException("Could not find requested camera.");
        }
        Camera open = Camera.open(zznP);
        zze zza2 = zza(open, this.zzbNR, this.zzbNS);
        if (zza2 == null) {
            throw new RuntimeException("Could not find suitable preview size.");
        }
        Size zzTM = zza2.zzTM();
        this.zzbNP = zza2.zzTL();
        int[] zza3 = zza(open, this.zzbNQ);
        if (zza3 == null) {
            throw new RuntimeException("Could not find suitable preview frames per second range.");
        }
        Camera.Parameters parameters = open.getParameters();
        if (zzTM != null) {
            parameters.setPictureSize(zzTM.getWidth(), zzTM.getHeight());
        }
        parameters.setPreviewSize(this.zzbNP.getWidth(), this.zzbNP.getHeight());
        parameters.setPreviewFpsRange(zza3[0], zza3[1]);
        parameters.setPreviewFormat(17);
        zza(open, parameters, zznP);
        if (this.zzbNT) {
            if (parameters.getSupportedFocusModes().contains("continuous-video")) {
                parameters.setFocusMode("continuous-video");
            } else {
                Log.i("CameraSource", "Camera auto focus is not supported on this device.");
            }
        }
        open.setParameters(parameters);
        open.setPreviewCallbackWithBuffer(new zza());
        open.addCallbackBuffer(zza(this.zzbNP));
        open.addCallbackBuffer(zza(this.zzbNP));
        open.addCallbackBuffer(zza(this.zzbNP));
        open.addCallbackBuffer(zza(this.zzbNP));
        return open;
    }

    static zze zza(Camera camera, int i, int i2) {
        int i3;
        zze zzeVar;
        zze zzeVar2 = null;
        int i4 = Integer.MAX_VALUE;
        for (zze zzeVar3 : zza(camera)) {
            Size zzTL = zzeVar3.zzTL();
            int abs = Math.abs(zzTL.getHeight() - i2) + Math.abs(zzTL.getWidth() - i);
            if (abs < i4) {
                zzeVar = zzeVar3;
                i3 = abs;
            } else {
                i3 = i4;
                zzeVar = zzeVar2;
            }
            i4 = i3;
            zzeVar2 = zzeVar;
        }
        return zzeVar2;
    }

    static List<zze> zza(Camera camera) {
        Camera.Parameters parameters = camera.getParameters();
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        List<Camera.Size> supportedPictureSizes = parameters.getSupportedPictureSizes();
        ArrayList arrayList = new ArrayList();
        for (Camera.Size size : supportedPreviewSizes) {
            float f = size.width / size.height;
            Iterator<Camera.Size> it = supportedPictureSizes.iterator();
            while (true) {
                if (it.hasNext()) {
                    Camera.Size next = it.next();
                    if (Math.abs(f - (next.width / next.height)) < 0.01f) {
                        arrayList.add(new zze(size, next));
                        break;
                    }
                }
            }
        }
        if (arrayList.size() == 0) {
            Log.w("CameraSource", "No preview sizes have a corresponding same-aspect-ratio picture size");
            for (Camera.Size size2 : supportedPreviewSizes) {
                arrayList.add(new zze(size2, null));
            }
        }
        return arrayList;
    }

    private void zza(Camera camera, Camera.Parameters parameters, int i) {
        int i2;
        int i3;
        int i4;
        int rotation = ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getRotation();
        switch (rotation) {
            case 0:
                i2 = 0;
                break;
            case 1:
                i2 = 90;
                break;
            case 2:
                i2 = RotationOptions.ROTATE_180;
                break;
            case 3:
                i2 = RotationOptions.ROTATE_270;
                break;
            default:
                Log.e("CameraSource", new StringBuilder(31).append("Bad rotation value: ").append(rotation).toString());
                i2 = 0;
                break;
        }
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(i, cameraInfo);
        if (cameraInfo.facing == 1) {
            i4 = (i2 + cameraInfo.orientation) % 360;
            i3 = (360 - i4) % 360;
        } else {
            i3 = ((cameraInfo.orientation - i2) + 360) % 360;
            i4 = i3;
        }
        this.zzMA = i4 / 90;
        camera.setDisplayOrientation(i3);
        parameters.setRotation(i4);
    }

    @SuppressLint({"InlinedApi"})
    private byte[] zza(Size size) {
        byte[] bArr = new byte[((int) Math.ceil((ImageFormat.getBitsPerPixel(17) * (size.getHeight() * size.getWidth())) / 8.0d)) + 1];
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        if (!wrap.hasArray() || wrap.array() != bArr) {
            throw new IllegalStateException("Failed to create valid buffer for camera source.");
        }
        this.zzbNY.put(bArr, wrap);
        return bArr;
    }

    @SuppressLint({"InlinedApi"})
    static int[] zza(Camera camera, float f) {
        int i;
        int[] iArr;
        int i2 = (int) (1000.0f * f);
        int[] iArr2 = null;
        int i3 = Integer.MAX_VALUE;
        for (int[] iArr3 : camera.getParameters().getSupportedPreviewFpsRange()) {
            int abs = Math.abs(i2 - iArr3[0]) + Math.abs(i2 - iArr3[1]);
            if (abs < i3) {
                iArr = iArr3;
                i = abs;
            } else {
                i = i3;
                iArr = iArr2;
            }
            i3 = i;
            iArr2 = iArr;
        }
        return iArr2;
    }

    private static int zznP(int i) {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        for (int i2 = 0; i2 < Camera.getNumberOfCameras(); i2++) {
            Camera.getCameraInfo(i2, cameraInfo);
            if (cameraInfo.facing == i) {
                return i2;
            }
        }
        return -1;
    }

    public int getCameraFacing() {
        return this.zzbNO;
    }

    public Size getPreviewSize() {
        return this.zzbNP;
    }

    public void release() {
        synchronized (this.zzbNM) {
            stop();
            this.zzbNX.release();
        }
    }

    public CameraSource start() throws IOException {
        synchronized (this.zzbNM) {
            if (this.zzbNN == null) {
                this.zzbNN = zzTK();
                int i = Build.VERSION.SDK_INT;
                this.zzbNU = new SurfaceTexture(100);
                this.zzbNN.setPreviewTexture(this.zzbNU);
                this.zzbNV = true;
                this.zzbNN.startPreview();
                this.zzbNW = new Thread(this.zzbNX);
                this.zzbNX.setActive(true);
                this.zzbNW.start();
            }
        }
        return this;
    }

    public CameraSource start(SurfaceHolder surfaceHolder) throws IOException {
        synchronized (this.zzbNM) {
            if (this.zzbNN == null) {
                this.zzbNN = zzTK();
                this.zzbNN.setPreviewDisplay(surfaceHolder);
                this.zzbNN.startPreview();
                this.zzbNW = new Thread(this.zzbNX);
                this.zzbNX.setActive(true);
                this.zzbNW.start();
                this.zzbNV = false;
            }
        }
        return this;
    }

    public void stop() {
        synchronized (this.zzbNM) {
            this.zzbNX.setActive(false);
            if (this.zzbNW != null) {
                try {
                    this.zzbNW.join();
                } catch (InterruptedException e) {
                    Log.d("CameraSource", "Frame processing thread interrupted on release.");
                }
                this.zzbNW = null;
            }
            if (this.zzbNN != null) {
                this.zzbNN.stopPreview();
                this.zzbNN.setPreviewCallbackWithBuffer(null);
                try {
                    if (this.zzbNV) {
                        this.zzbNN.setPreviewTexture(null);
                    } else {
                        this.zzbNN.setPreviewDisplay(null);
                    }
                } catch (Exception e2) {
                    String valueOf = String.valueOf(e2);
                    Log.e("CameraSource", new StringBuilder(String.valueOf(valueOf).length() + 32).append("Failed to clear camera preview: ").append(valueOf).toString());
                }
                this.zzbNN.release();
                this.zzbNN = null;
            }
            this.zzbNY.clear();
        }
    }

    public void takePicture(ShutterCallback shutterCallback, PictureCallback pictureCallback) {
        synchronized (this.zzbNM) {
            if (this.zzbNN != null) {
                zzd zzdVar = new zzd();
                zzdVar.zzbOg = shutterCallback;
                zzc zzcVar = new zzc();
                zzcVar.zzbOf = pictureCallback;
                this.zzbNN.takePicture(zzdVar, null, null, zzcVar);
            }
        }
    }
}
