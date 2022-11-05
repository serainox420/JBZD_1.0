package com.smartadserver.android.library.ui.a.a;

import android.opengl.GLES20;
import android.util.Log;
/* compiled from: SASGLProgram.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f5590a = a.class.getSimpleName();
    private int b;

    public a(String str, String str2) {
        this.b = -1;
        this.b = a(str, str2);
    }

    int a() {
        return this.b;
    }

    public int a(String str) {
        int glGetAttribLocation = GLES20.glGetAttribLocation(a(), str);
        d.a("glGetAttribLocation " + str);
        if (glGetAttribLocation == -1) {
            throw new RuntimeException("Could not get attrib location for " + str);
        }
        return glGetAttribLocation;
    }

    public int b(String str) {
        int glGetUniformLocation = GLES20.glGetUniformLocation(a(), str);
        d.a("glGetUniformLocation " + str);
        if (glGetUniformLocation == -1) {
            throw new RuntimeException("Could not get uniform location for " + str);
        }
        return glGetUniformLocation;
    }

    public void b() {
        GLES20.glUseProgram(a());
        d.a("glUseProgram");
    }

    private int a(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            GLES20.glCompileShader(glCreateShader);
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            if (iArr[0] == 0) {
                Log.e(f5590a, "Could not compile shader " + i + ":");
                Log.e(f5590a, GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                return 0;
            }
        }
        return glCreateShader;
    }

    private int a(String str, String str2) {
        int a2;
        int a3 = a(35633, str);
        if (a3 == 0 || (a2 = a(35632, str2)) == 0) {
            return 0;
        }
        int glCreateProgram = GLES20.glCreateProgram();
        if (glCreateProgram != 0) {
            GLES20.glAttachShader(glCreateProgram, a3);
            d.a("glAttachShader");
            GLES20.glAttachShader(glCreateProgram, a2);
            d.a("glAttachShader");
            GLES20.glLinkProgram(glCreateProgram);
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
            if (iArr[0] != 1) {
                Log.e(f5590a, "Could not link program: ");
                Log.e(f5590a, GLES20.glGetProgramInfoLog(glCreateProgram));
                GLES20.glDeleteProgram(glCreateProgram);
                return 0;
            }
        }
        return glCreateProgram;
    }
}
