package com.smartadserver.android.library.ui.a.a;
/* compiled from: SASGLSphereShaders.java */
/* loaded from: classes3.dex */
public class c {
    public static String a() {
        return "uniform mat4 uMVPMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTextureMatrix * aTextureCoord).xy;\n}";
    }

    public static String b() {
        return "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 color = texture2D(sTexture, vTextureCoord);\n    gl_FragColor = color;\n}";
    }
}
