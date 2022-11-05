package com.smartadserver.android.library.ui.a.a;

import android.opengl.GLES20;
/* compiled from: SASGLUtil.java */
/* loaded from: classes3.dex */
public class d {
    public static void a(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            throw new RuntimeException(str + ": glError " + glGetError);
        }
    }

    public static boolean a(float[] fArr) {
        for (int i = 0; i < 16; i++) {
            if (Math.abs(fArr[i]) > 0.01d && Math.abs(fArr[i]) != 1.0f) {
                return true;
            }
        }
        return false;
    }
}
