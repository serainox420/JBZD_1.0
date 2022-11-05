.class public Lcom/loopme/video360/texture/MD360VideoTexture;
.super Lcom/loopme/video360/texture/MD360Texture;
.source "MD360VideoTexture.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mOnSurfaceReadyListener:Lcom/loopme/video360/MDVRLibrary$IOnSurfaceReadyCallback;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/loopme/video360/texture/MD360VideoTexture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/video360/texture/MD360VideoTexture;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/loopme/video360/MDVRLibrary$IOnSurfaceReadyCallback;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/loopme/video360/texture/MD360Texture;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mOnSurfaceReadyListener:Lcom/loopme/video360/MDVRLibrary$IOnSurfaceReadyCallback;

    .line 27
    return-void
.end method

.method private onCreateSurface(I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 60
    iget-object v0, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 61
    iget-object v0, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Lcom/loopme/video360/texture/MD360VideoTexture;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/loopme/video360/texture/MD360VideoTexture;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 62
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurface:Landroid/view/Surface;

    .line 63
    iget-object v0, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mOnSurfaceReadyListener:Lcom/loopme/video360/MDVRLibrary$IOnSurfaceReadyCallback;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mOnSurfaceReadyListener:Lcom/loopme/video360/MDVRLibrary$IOnSurfaceReadyCallback;

    iget-object v1, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/loopme/video360/MDVRLibrary$IOnSurfaceReadyCallback;->onSurfaceReady(Landroid/view/Surface;)V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public create()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/loopme/video360/texture/MD360Texture;->create()V

    .line 48
    invoke-virtual {p0}, Lcom/loopme/video360/texture/MD360VideoTexture;->getCurrentTextureId()I

    move-result v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/loopme/video360/texture/MD360VideoTexture;->isEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-direct {p0, v0}, Lcom/loopme/video360/texture/MD360VideoTexture;->onCreateSurface(I)V

    goto :goto_0
.end method

.method protected createTextureId()I
    .locals 7

    .prologue
    const v6, 0x812f

    const/4 v5, 0x1

    const v4, 0x46180400    # 9729.0f

    const/4 v3, 0x0

    const v2, 0x8d65

    .line 95
    new-array v0, v5, [I

    .line 98
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 99
    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 100
    const-string v1, "Texture generate"

    invoke-static {v1}, Lcom/loopme/video360/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 102
    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 103
    const-string v1, "Texture bind"

    invoke-static {v1}, Lcom/loopme/video360/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 105
    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 106
    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 107
    const/16 v1, 0x2802

    invoke-static {v2, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 108
    const/16 v1, 0x2803

    invoke-static {v2, v1, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 110
    aget v0, v0, v3

    return v0
.end method

.method protected onResize(II)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 74
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-super {p0}, Lcom/loopme/video360/texture/MD360Texture;->release()V

    .line 33
    iget-object v0, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 36
    :cond_0
    iput-object v1, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 38
    iget-object v0, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 41
    :cond_1
    iput-object v1, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurface:Landroid/view/Surface;

    .line 43
    return-void
.end method

.method public declared-synchronized syncDrawInContext(Lcom/loopme/video360/texture/MD360Texture$ISyncDrawCallback;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/loopme/video360/texture/MD360VideoTexture;->getCurrentTextureId()I

    move-result v0

    .line 80
    invoke-virtual {p0, v0}, Lcom/loopme/video360/texture/MD360VideoTexture;->isEmpty(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_1

    .line 83
    sget-object v0, Lcom/loopme/video360/texture/MD360VideoTexture;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mSurfaceTexture == null"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/loopme/video360/texture/MD360VideoTexture;->create()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 88
    iget-object v0, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 89
    invoke-interface {p1}, Lcom/loopme/video360/texture/MD360Texture$ISyncDrawCallback;->onDrawOpenGL()V

    .line 90
    iget-object v0, p0, Lcom/loopme/video360/texture/MD360VideoTexture;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
