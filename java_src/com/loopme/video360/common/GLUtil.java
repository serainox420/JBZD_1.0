package com.loopme.video360.common;

import android.app.ActivityManager;
import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.util.Log;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.loopme.video360.objects.MDSphere3D;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class GLUtil {
    private static final String TAG = "GLUtil";

    public static boolean supportsEs2(Context context) {
        return ((ActivityManager) context.getSystemService("activity")).getDeviceConfigurationInfo().reqGlEsVersion >= 131072;
    }

    public static void glCheck(String str) {
        while (true) {
            int glGetError = GLES20.glGetError();
            if (glGetError != 0) {
                Log.e(TAG, str + ": glError " + GLUtils.getEGLErrorString(glGetError));
            } else {
                return;
            }
        }
    }

    public static String readTextFileFromRaw(Context context, int i) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(context.getResources().openRawResource(i)));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return sb.toString();
                }
                sb.append(readLine);
                sb.append('\n');
            } catch (IOException e) {
                return null;
            }
        }
    }

    public static void loadObject3D(Context context, int i, MDSphere3D mDSphere3D) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(context.getResources().openRawResource(i)));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                if (readLine.startsWith("v ")) {
                    arrayList.add(readLine.substring(2));
                }
                if (readLine.startsWith("vt ")) {
                    arrayList2.add(readLine.substring(3));
                }
                if (readLine.startsWith("vn ")) {
                    arrayList3.add(readLine.substring(3));
                }
                if (readLine.startsWith("f ")) {
                    arrayList4.add(readLine.substring(2));
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        float[] fArr = new float[arrayList4.size() * 3 * 3];
        float[] fArr2 = new float[arrayList4.size() * 3 * 2];
        short[] sArr = new short[arrayList4.size() * 3];
        int i2 = 0;
        Iterator it = arrayList4.iterator();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i2;
            if (it.hasNext()) {
                String[] split = ((String) it.next()).split(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
                int length = split.length;
                int i6 = 0;
                i2 = i5;
                while (i6 < length) {
                    String str = split[i6];
                    int i7 = i2 + 1;
                    sArr[i2] = (short) i2;
                    String[] split2 = str.split("/");
                    String[] split3 = ((String) arrayList.get(Integer.parseInt(split2[0]) - 1)).split(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
                    String[] split4 = ((String) arrayList2.get(Integer.parseInt(split2[1]) - 1)).split(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
                    int length2 = split3.length;
                    int i8 = 0;
                    while (i8 < length2) {
                        fArr[i3] = Float.parseFloat(split3[i8]);
                        i8++;
                        i3++;
                    }
                    int length3 = split4.length;
                    int i9 = 0;
                    while (i9 < length3) {
                        fArr2[i4] = Float.parseFloat(split4[i9]);
                        i9++;
                        i4++;
                    }
                    i6++;
                    i2 = i7;
                }
            } else {
                FloatBuffer put = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(fArr);
                put.position(0);
                FloatBuffer put2 = ByteBuffer.allocateDirect(fArr2.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(fArr2);
                put2.position(0);
                mDSphere3D.setVerticesBuffer(put);
                mDSphere3D.setTexCoordinateBuffer(put2);
                mDSphere3D.setNumIndices(sArr.length);
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int compileShader(int i, String str) {
        int i2 = 0;
        int glCreateShader = GLES20.glCreateShader(i);
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            GLES20.glCompileShader(glCreateShader);
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            if (iArr[0] == 0) {
                Log.e(TAG, "Error compiling shader: " + GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                if (i2 != 0) {
                    throw new RuntimeException("Error creating shader.");
                }
                return i2;
            }
        }
        i2 = glCreateShader;
        if (i2 != 0) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0054 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int createAndLinkProgram(int i, int i2, String[] strArr) {
        int i3 = 0;
        int glCreateProgram = GLES20.glCreateProgram();
        if (glCreateProgram != 0) {
            GLES20.glAttachShader(glCreateProgram, i);
            GLES20.glAttachShader(glCreateProgram, i2);
            if (strArr != null) {
                int length = strArr.length;
                for (int i4 = 0; i4 < length; i4++) {
                    GLES20.glBindAttribLocation(glCreateProgram, i4, strArr[i4]);
                }
            }
            GLES20.glLinkProgram(glCreateProgram);
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
            if (iArr[0] == 0) {
                Log.e(TAG, "Error compiling program: " + GLES20.glGetProgramInfoLog(glCreateProgram));
                GLES20.glDeleteProgram(glCreateProgram);
                if (i3 != 0) {
                    throw new RuntimeException("Error creating program.");
                }
                return i3;
            }
        }
        i3 = glCreateProgram;
        if (i3 != 0) {
        }
    }
}
