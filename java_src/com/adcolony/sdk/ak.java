package com.adcolony.sdk;

import android.opengl.GLES20;
import android.util.Log;
import java.nio.Buffer;
/* loaded from: classes.dex */
class ak {

    /* renamed from: a  reason: collision with root package name */
    ai f1045a;
    int b;
    int c;
    int d;
    int e;
    int f;
    int g;
    int h;
    int i;

    ak(ai aiVar, String str, String str2) {
        a("Compiling " + getClass().getSimpleName() + "...");
        this.f1045a = aiVar;
        this.b = GLES20.glCreateShader(35633);
        this.c = GLES20.glCreateShader(35632);
        a("Vertex shader");
        GLES20.glShaderSource(this.b, str);
        GLES20.glCompileShader(this.b);
        a(GLES20.glGetShaderInfoLog(this.b));
        a("Pixel shader");
        GLES20.glShaderSource(this.c, str2);
        GLES20.glCompileShader(this.c);
        a(GLES20.glGetShaderInfoLog(this.c));
        a("vertex_shader:" + this.b + " pixel_shader:" + this.c);
        this.d = GLES20.glCreateProgram();
        GLES20.glAttachShader(this.d, this.b);
        GLES20.glAttachShader(this.d, this.c);
        GLES20.glLinkProgram(this.d);
        this.e = GLES20.glGetUniformLocation(this.d, "transform");
        this.f = GLES20.glGetAttribLocation(this.d, "position");
        this.g = GLES20.glGetAttribLocation(this.d, "color");
        this.h = GLES20.glGetUniformLocation(this.d, "texture");
        this.i = GLES20.glGetAttribLocation(this.d, "uv");
    }

    static void a(String str) {
        Log.d("ADC3", str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        GLES20.glUseProgram(this.d);
        GLES20.glUniformMatrix4fv(this.e, 1, false, this.f1045a.z.c, 0);
        this.f1045a.w.rewind();
        GLES20.glVertexAttribPointer(this.f, 2, 5126, false, 0, (Buffer) this.f1045a.w);
        GLES20.glEnableVertexAttribArray(this.f);
        if (this.i >= 0) {
            this.f1045a.x.rewind();
            GLES20.glVertexAttribPointer(this.i, 2, 5126, false, 0, (Buffer) this.f1045a.x);
            GLES20.glEnableVertexAttribArray(this.i);
        }
        if (this.g >= 0) {
            this.f1045a.y.rewind();
            GLES20.glVertexAttribPointer(this.g, 4, 5121, false, 0, (Buffer) this.f1045a.y);
            GLES20.glEnableVertexAttribArray(this.g);
        }
        if (this.h >= 0) {
            GLES20.glUniform1i(this.h, 0);
        }
    }

    /* loaded from: classes.dex */
    static class a extends ak {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a(ai aiVar) {
            super(aiVar, "precision mediump float;              \nuniform mat4   transform;             \nattribute vec4 position;              \nattribute lowp vec4 color;            \nvarying   lowp vec4 vertex_color;     \nvoid main()                           \n{                                     \n  gl_Position = transform * position; \n  vertex_color = color / 255.0;       \n}                                     \n", "precision mediump float;        \nvarying lowp vec4 vertex_color; \nvoid main()                     \n{                               \n  gl_FragColor = vertex_color;  \n}                               \n");
        }
    }

    /* loaded from: classes.dex */
    static class b extends ak {
        /* JADX INFO: Access modifiers changed from: package-private */
        public b(ai aiVar) {
            super(aiVar, "precision mediump float;              \nuniform mat4   transform;             \nattribute vec4 position;              \nattribute      vec2 uv;               \nvarying        vec2 vertex_uv;        \nvoid main()                           \n{                                     \n  gl_Position = transform * position; \n  vertex_uv = uv;                     \n}                                     \n", "precision mediump float;                       \nuniform              sampler2D texture;        \nvarying              vec2      vertex_uv;      \nvoid main()                                    \n{                                              \n  gl_FragColor = texture2D(texture,vertex_uv); \n}                                              \n");
        }
    }

    /* loaded from: classes.dex */
    static class d extends ak {
        /* JADX INFO: Access modifiers changed from: package-private */
        public d(ai aiVar) {
            super(aiVar, "precision mediump float;              \nuniform        mat4 transform;        \nattribute      vec4 position;         \nattribute      vec2 uv;               \nvarying        vec2 vertex_uv;        \nattribute lowp vec4 color;            \nvarying   lowp vec4 vertex_color;     \nvoid main()                           \n{                                     \n  gl_Position = transform * position; \n  vertex_uv = uv;                     \n  vertex_color = color / 255.0;       \n}                                     \n", "precision mediump float;                                      \nuniform           sampler2D texture;                          \nvarying           vec2      vertex_uv;                        \nvarying   lowp    vec4      vertex_color;                     \nvoid main()                                                   \n{                                                             \n  gl_FragColor = texture2D(texture,vertex_uv) * vertex_color; \n}                                                             \n");
        }
    }

    /* loaded from: classes.dex */
    static class c extends ak {
        /* JADX INFO: Access modifiers changed from: package-private */
        public c(ai aiVar) {
            super(aiVar, "precision mediump float;                  \nuniform mat4   transform;                 \nattribute vec4 position;                  \nattribute      vec2 uv;                   \nvarying        vec2 vertex_uv;            \nattribute lowp vec4 color;                \nvarying   lowp vec4 vertex_color;         \nvoid main()                               \n{                                         \n  gl_Position = transform * position;     \n  vertex_uv = uv;                         \n  vertex_color = color / 255.0;           \n}                                         \n", "precision mediump float;                                      \nuniform      sampler2D texture;                               \nvarying      vec2      vertex_uv;                             \nvarying lowp vec4 vertex_color;                               \nvoid main()                                                   \n{                                                             \n  vec4 texture_color = texture2D(texture,vertex_uv);          \n  gl_FragColor = vec4( texture_color.xyz + (vertex_color.xyz * texture_color.a), texture_color.a ); \n}                                                             \n");
        }
    }

    /* loaded from: classes.dex */
    static class e extends ak {
        /* JADX INFO: Access modifiers changed from: package-private */
        public e(ai aiVar) {
            super(aiVar, "precision mediump float;                        \nuniform        mat4   transform;                \nattribute      vec4 position;                   \nattribute      vec2 uv;                         \nvarying        vec2 vertex_uv;                  \nattribute lowp vec4  color;                     \nvarying   lowp vec4  vertex_color;              \nvoid main()                                     \n{                                               \n  gl_Position = transform * position;           \n  vertex_uv = uv;                               \n  vertex_color = color / 255.0;                 \n}                                               \n", "precision mediump float;                                        \nuniform      sampler2D texture;                                 \nvarying      vec2      vertex_uv;                               \nvarying lowp vec4      vertex_color;                            \nvoid main()                                                     \n{                                                               \n  lowp float texture_a = texture2D(texture,vertex_uv).a;        \n  gl_FragColor = vec4( vertex_color.xyz*texture_a, texture_a ); \n}                                                               \n");
        }
    }

    /* loaded from: classes.dex */
    static class f extends ak {
        /* JADX INFO: Access modifiers changed from: package-private */
        public f(ai aiVar) {
            super(aiVar, "precision mediump float;                   \nuniform mat4   transform;                  \nattribute vec4 position;                   \nattribute      vec2 uv;                    \nvarying        vec2 vertex_uv;             \nattribute lowp vec4  color;                \nvarying   lowp vec4  vertex_color;         \nvarying   lowp float vertex_inverse_a;     \nvoid main()                                \n{                                          \n  gl_Position = transform * position;      \n  vertex_uv = uv;                          \n  vertex_color = color / 255.0;            \n  vertex_inverse_a = 1.0 - vertex_color.a; \n}                                          \n", "precision mediump float;                   \nuniform      sampler2D texture;            \nvarying      vec2      vertex_uv;          \nvarying lowp vec4      vertex_color;       \nvarying lowp float vertex_inverse_a;       \nvoid main()                                \n{                                          \n  vec4 texture_color = texture2D(texture,vertex_uv);        \n  gl_FragColor = vec4( (texture_color.xyz*vertex_inverse_a)+(vertex_color.xyz*texture_color.a), texture_color.a );  \n}                                                   \n");
        }
    }
}
