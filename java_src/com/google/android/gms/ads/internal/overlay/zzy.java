package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.util.Log;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.gcm.Task;
import com.google.android.gms.internal.zzfz;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
@zzme
@TargetApi(14)
/* loaded from: classes.dex */
public class zzy extends Thread implements SurfaceTexture.OnFrameAvailableListener, zzx.zza {
    private static final float[] zzOw = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};
    private final float[] zzOA;
    private final float[] zzOB;
    private final float[] zzOC;
    private final float[] zzOD;
    private float zzOE;
    private float zzOF;
    private float zzOG;
    private SurfaceTexture zzOH;
    private SurfaceTexture zzOI;
    private int zzOJ;
    private int zzOK;
    private int zzOL;
    private FloatBuffer zzOM;
    private final CountDownLatch zzON;
    private final Object zzOO;
    private EGL10 zzOP;
    private EGLDisplay zzOQ;
    private EGLContext zzOR;
    private EGLSurface zzOS;
    private volatile boolean zzOT;
    private volatile boolean zzOU;
    private final float[] zzOt;
    private final zzx zzOx;
    private final float[] zzOy;
    private final float[] zzOz;
    private int zzrC;
    private int zzrD;

    public zzy(Context context) {
        super("SphericalVideoProcessor");
        this.zzOM = ByteBuffer.allocateDirect(zzOw.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.zzOM.put(zzOw).position(0);
        this.zzOt = new float[9];
        this.zzOy = new float[9];
        this.zzOz = new float[9];
        this.zzOA = new float[9];
        this.zzOB = new float[9];
        this.zzOC = new float[9];
        this.zzOD = new float[9];
        this.zzOE = Float.NaN;
        this.zzOx = new zzx(context);
        this.zzOx.zza(this);
        this.zzON = new CountDownLatch(1);
        this.zzOO = new Object();
    }

    private void zza(float[] fArr, float f) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = (float) Math.cos(f);
        fArr[5] = (float) (-Math.sin(f));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(f);
        fArr[8] = (float) Math.cos(f);
    }

    private void zza(float[] fArr, float[] fArr2, float[] fArr3) {
        fArr[0] = (fArr2[0] * fArr3[0]) + (fArr2[1] * fArr3[3]) + (fArr2[2] * fArr3[6]);
        fArr[1] = (fArr2[0] * fArr3[1]) + (fArr2[1] * fArr3[4]) + (fArr2[2] * fArr3[7]);
        fArr[2] = (fArr2[0] * fArr3[2]) + (fArr2[1] * fArr3[5]) + (fArr2[2] * fArr3[8]);
        fArr[3] = (fArr2[3] * fArr3[0]) + (fArr2[4] * fArr3[3]) + (fArr2[5] * fArr3[6]);
        fArr[4] = (fArr2[3] * fArr3[1]) + (fArr2[4] * fArr3[4]) + (fArr2[5] * fArr3[7]);
        fArr[5] = (fArr2[3] * fArr3[2]) + (fArr2[4] * fArr3[5]) + (fArr2[5] * fArr3[8]);
        fArr[6] = (fArr2[6] * fArr3[0]) + (fArr2[7] * fArr3[3]) + (fArr2[8] * fArr3[6]);
        fArr[7] = (fArr2[6] * fArr3[1]) + (fArr2[7] * fArr3[4]) + (fArr2[8] * fArr3[7]);
        fArr[8] = (fArr2[6] * fArr3[2]) + (fArr2[7] * fArr3[5]) + (fArr2[8] * fArr3[8]);
    }

    private float[] zza(float[] fArr, float[] fArr2) {
        return new float[]{(fArr[0] * fArr2[0]) + (fArr[1] * fArr2[1]) + (fArr[2] * fArr2[2]), (fArr[3] * fArr2[0]) + (fArr[4] * fArr2[1]) + (fArr[5] * fArr2[2]), (fArr[6] * fArr2[0]) + (fArr[7] * fArr2[1]) + (fArr[8] * fArr2[2])};
    }

    private void zzaD(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            Log.e("SphericalVideoRenderer", new StringBuilder(String.valueOf(str).length() + 21).append(str).append(": glError ").append(glGetError).toString());
        }
    }

    private void zzb(float[] fArr, float f) {
        fArr[0] = (float) Math.cos(f);
        fArr[1] = (float) (-Math.sin(f));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(f);
        fArr[4] = (float) Math.cos(f);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    private float zzc(float[] fArr) {
        float[] zza = zza(fArr, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED});
        return ((float) Math.atan2(zza[1], zza[0])) - 1.5707964f;
    }

    private int zzc(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        zzaD("createShader");
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            zzaD("shaderSource");
            GLES20.glCompileShader(glCreateShader);
            zzaD("compileShader");
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            zzaD("getShaderiv");
            if (iArr[0] == 0) {
                Log.e("SphericalVideoRenderer", new StringBuilder(37).append("Could not compile shader ").append(i).append(":").toString());
                Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                zzaD("deleteShader");
                return 0;
            }
        }
        return glCreateShader;
    }

    private void zzio() {
        GLES20.glViewport(0, 0, this.zzrC, this.zzrD);
        zzaD("viewport");
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.zzOJ, "uFOVx");
        int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.zzOJ, "uFOVy");
        if (this.zzrC > this.zzrD) {
            GLES20.glUniform1f(glGetUniformLocation, 0.87266463f);
            GLES20.glUniform1f(glGetUniformLocation2, (this.zzrD * 0.87266463f) / this.zzrC);
            return;
        }
        GLES20.glUniform1f(glGetUniformLocation, (this.zzrC * 0.87266463f) / this.zzrD);
        GLES20.glUniform1f(glGetUniformLocation2, 0.87266463f);
    }

    private int zziq() {
        int zzc;
        int zzc2 = zzc(35633, zzit());
        if (zzc2 == 0 || (zzc = zzc(35632, zziu())) == 0) {
            return 0;
        }
        int glCreateProgram = GLES20.glCreateProgram();
        zzaD("createProgram");
        if (glCreateProgram != 0) {
            GLES20.glAttachShader(glCreateProgram, zzc2);
            zzaD("attachShader");
            GLES20.glAttachShader(glCreateProgram, zzc);
            zzaD("attachShader");
            GLES20.glLinkProgram(glCreateProgram);
            zzaD("linkProgram");
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
            zzaD("getProgramiv");
            if (iArr[0] != 1) {
                Log.e("SphericalVideoRenderer", "Could not link program: ");
                Log.e("SphericalVideoRenderer", GLES20.glGetProgramInfoLog(glCreateProgram));
                GLES20.glDeleteProgram(glCreateProgram);
                zzaD("deleteProgram");
                return 0;
            }
            GLES20.glValidateProgram(glCreateProgram);
            zzaD("validateProgram");
        }
        return glCreateProgram;
    }

    private EGLConfig zzis() {
        int[] iArr = new int[1];
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (this.zzOP.eglChooseConfig(this.zzOQ, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12325, 16, 12344}, eGLConfigArr, 1, iArr) && iArr[0] > 0) {
            return eGLConfigArr[0];
        }
        return null;
    }

    private String zzit() {
        zzfz<String> zzfzVar = zzgd.zzDo;
        return !zzfzVar.get().equals(zzfzVar.zzfr()) ? zzfzVar.get() : "attribute highp vec3 aPosition;varying vec3 pos;void main() {  gl_Position = vec4(aPosition, 1.0);  pos = aPosition;}";
    }

    private String zziu() {
        zzfz<String> zzfzVar = zzgd.zzDp;
        return !zzfzVar.get().equals(zzfzVar.zzfr()) ? zzfzVar.get() : "#extension GL_OES_EGL_image_external : require\n#define INV_PI 0.3183\nprecision highp float;varying vec3 pos;uniform samplerExternalOES uSplr;uniform mat3 uVMat;uniform float uFOVx;uniform float uFOVy;void main() {  vec3 ray = vec3(pos.x * tan(uFOVx), pos.y * tan(uFOVy), -1);  ray = (uVMat * ray).xyz;  ray = normalize(ray);  vec2 texCrd = vec2(    0.5 + atan(ray.x, - ray.z) * INV_PI * 0.5, acos(ray.y) * INV_PI);  gl_FragColor = vec4(texture2D(uSplr, texCrd).xyz, 1.0);}";
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.zzOL++;
        synchronized (this.zzOO) {
            this.zzOO.notifyAll();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.graphics.SurfaceTexture, android.graphics.SurfaceTexture$OnFrameAvailableListener] */
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        boolean z = true;
        if (this.zzOI == null) {
            zzpk.e("SphericalVideoProcessor started with no output texture.");
            this.zzON.countDown();
            return;
        }
        boolean zzir = zzir();
        int zzip = zzip();
        if (this.zzOJ == 0) {
            z = false;
        }
        if (!zzir || !z) {
            String valueOf = String.valueOf(GLUtils.getEGLErrorString(this.zzOP.eglGetError()));
            String concat = valueOf.length() != 0 ? "EGL initialization failed: ".concat(valueOf) : new String("EGL initialization failed: ");
            zzpk.e(concat);
            com.google.android.gms.ads.internal.zzw.zzcQ().zza(new Throwable(concat), "SphericalVideoProcessor.run.1");
            zziv();
            this.zzON.countDown();
            return;
        }
        this.zzOH = new SurfaceTexture(zzip);
        this.zzOH.setOnFrameAvailableListener(this);
        this.zzON.countDown();
        this.zzOx.start();
        try {
            this.zzOT = true;
            while (!this.zzOU) {
                zzin();
                if (this.zzOT) {
                    zzio();
                    this.zzOT = false;
                }
                try {
                    synchronized (this.zzOO) {
                        if (!this.zzOU && !this.zzOT && this.zzOL == 0) {
                            this.zzOO.wait();
                        }
                    }
                } catch (InterruptedException e) {
                }
            }
        } catch (IllegalStateException e2) {
            zzpk.zzbh("SphericalVideoProcessor halted unexpectedly.");
        } catch (Throwable th) {
            zzpk.zzb("SphericalVideoProcessor died.", th);
            com.google.android.gms.ads.internal.zzw.zzcQ().zza(th, "SphericalVideoProcessor.run.2");
        } finally {
            this.zzOx.stop();
            this.zzOH.setOnFrameAvailableListener(null);
            this.zzOH = null;
            zziv();
        }
    }

    public void zza(SurfaceTexture surfaceTexture, int i, int i2) {
        this.zzrC = i;
        this.zzrD = i2;
        this.zzOI = surfaceTexture;
    }

    public void zzb(float f, float f2) {
        float f3;
        float f4;
        if (this.zzrC > this.zzrD) {
            f3 = (1.7453293f * f) / this.zzrC;
            f4 = (1.7453293f * f2) / this.zzrC;
        } else {
            f3 = (1.7453293f * f) / this.zzrD;
            f4 = (1.7453293f * f2) / this.zzrD;
        }
        this.zzOF -= f3;
        this.zzOG -= f4;
        if (this.zzOG < -1.5707964f) {
            this.zzOG = -1.5707964f;
        }
        if (this.zzOG > 1.5707964f) {
            this.zzOG = 1.5707964f;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzx.zza
    public void zzhJ() {
        synchronized (this.zzOO) {
            this.zzOO.notifyAll();
        }
    }

    public void zzil() {
        synchronized (this.zzOO) {
            this.zzOU = true;
            this.zzOI = null;
            this.zzOO.notifyAll();
        }
    }

    public SurfaceTexture zzim() {
        if (this.zzOI == null) {
            return null;
        }
        try {
            this.zzON.await();
        } catch (InterruptedException e) {
        }
        return this.zzOH;
    }

    void zzin() {
        while (this.zzOL > 0) {
            this.zzOH.updateTexImage();
            this.zzOL--;
        }
        if (this.zzOx.zzb(this.zzOt)) {
            if (Float.isNaN(this.zzOE)) {
                this.zzOE = -zzc(this.zzOt);
            }
            zzb(this.zzOC, this.zzOE + this.zzOF);
        } else {
            zza(this.zzOt, -1.5707964f);
            zzb(this.zzOC, this.zzOF);
        }
        zza(this.zzOy, 1.5707964f);
        zza(this.zzOz, this.zzOC, this.zzOy);
        zza(this.zzOA, this.zzOt, this.zzOz);
        zza(this.zzOB, this.zzOG);
        zza(this.zzOD, this.zzOB, this.zzOA);
        GLES20.glUniformMatrix3fv(this.zzOK, 1, false, this.zzOD, 0);
        GLES20.glDrawArrays(5, 0, 4);
        zzaD("drawArrays");
        GLES20.glFinish();
        this.zzOP.eglSwapBuffers(this.zzOQ, this.zzOS);
    }

    int zzip() {
        this.zzOJ = zziq();
        GLES20.glUseProgram(this.zzOJ);
        zzaD("useProgram");
        int glGetAttribLocation = GLES20.glGetAttribLocation(this.zzOJ, "aPosition");
        GLES20.glVertexAttribPointer(glGetAttribLocation, 3, 5126, false, 12, (Buffer) this.zzOM);
        zzaD("vertexAttribPointer");
        GLES20.glEnableVertexAttribArray(glGetAttribLocation);
        zzaD("enableVertexAttribArray");
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        zzaD("genTextures");
        int i = iArr[0];
        GLES20.glBindTexture(36197, i);
        zzaD("bindTextures");
        GLES20.glTexParameteri(36197, Task.EXTRAS_LIMIT_BYTES, 9729);
        zzaD("texParameteri");
        GLES20.glTexParameteri(36197, 10241, 9729);
        zzaD("texParameteri");
        GLES20.glTexParameteri(36197, 10242, 33071);
        zzaD("texParameteri");
        GLES20.glTexParameteri(36197, 10243, 33071);
        zzaD("texParameteri");
        this.zzOK = GLES20.glGetUniformLocation(this.zzOJ, "uVMat");
        GLES20.glUniformMatrix3fv(this.zzOK, 1, false, new float[]{1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f}, 0);
        return i;
    }

    boolean zzir() {
        EGLConfig zzis;
        this.zzOP = (EGL10) EGLContext.getEGL();
        this.zzOQ = this.zzOP.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        if (this.zzOQ == EGL10.EGL_NO_DISPLAY) {
            return false;
        }
        if (this.zzOP.eglInitialize(this.zzOQ, new int[2]) && (zzis = zzis()) != null) {
            this.zzOR = this.zzOP.eglCreateContext(this.zzOQ, zzis, EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
            if (this.zzOR == null || this.zzOR == EGL10.EGL_NO_CONTEXT) {
                return false;
            }
            this.zzOS = this.zzOP.eglCreateWindowSurface(this.zzOQ, zzis, this.zzOI, null);
            if (this.zzOS == null || this.zzOS == EGL10.EGL_NO_SURFACE) {
                return false;
            }
            return this.zzOP.eglMakeCurrent(this.zzOQ, this.zzOS, this.zzOS, this.zzOR);
        }
        return false;
    }

    boolean zziv() {
        boolean z = false;
        if (this.zzOS != null && this.zzOS != EGL10.EGL_NO_SURFACE) {
            z = this.zzOP.eglMakeCurrent(this.zzOQ, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT) | false | this.zzOP.eglDestroySurface(this.zzOQ, this.zzOS);
            this.zzOS = null;
        }
        if (this.zzOR != null) {
            z |= this.zzOP.eglDestroyContext(this.zzOQ, this.zzOR);
            this.zzOR = null;
        }
        if (this.zzOQ != null) {
            boolean eglTerminate = z | this.zzOP.eglTerminate(this.zzOQ);
            this.zzOQ = null;
            return eglTerminate;
        }
        return z;
    }

    public void zzj(int i, int i2) {
        synchronized (this.zzOO) {
            this.zzrC = i;
            this.zzrD = i2;
            this.zzOT = true;
            this.zzOO.notifyAll();
        }
    }
}
