.class public Lcom/smartadserver/android/library/ui/a/a/c;
.super Ljava/lang/Object;
.source "SASGLSphereShaders.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTextureMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTextureMatrix * aTextureCoord).xy;\n}"

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 color = texture2D(sTexture, vTextureCoord);\n    gl_FragColor = color;\n}"

    return-object v0
.end method
