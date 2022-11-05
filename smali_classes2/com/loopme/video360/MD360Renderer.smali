.class public Lcom/loopme/video360/MD360Renderer;
.super Ljava/lang/Object;
.source "MD360Renderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/loopme/video360/texture/MD360Texture$ISyncDrawCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/video360/MD360Renderer$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MD360Renderer"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDirector:Lcom/loopme/video360/MD360Director;

.field private mObject3D:Lcom/loopme/video360/objects/MDSphere3D;

.field private mProgram:Lcom/loopme/video360/MD360Program;

.field private mStatus:Lcom/loopme/video360/MDStatusManager$Status;

.field private mTexture:Lcom/loopme/video360/texture/MD360Texture;


# direct methods
.method private constructor <init>(Lcom/loopme/video360/MD360Renderer$Builder;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/loopme/video360/MD360Renderer$Builder;->access$000(Lcom/loopme/video360/MD360Renderer$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Lcom/loopme/video360/MD360Renderer$Builder;->access$100(Lcom/loopme/video360/MD360Renderer$Builder;)Lcom/loopme/video360/texture/MD360Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mTexture:Lcom/loopme/video360/texture/MD360Texture;

    .line 31
    invoke-static {p1}, Lcom/loopme/video360/MD360Renderer$Builder;->access$200(Lcom/loopme/video360/MD360Renderer$Builder;)Lcom/loopme/video360/MD360Director;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mDirector:Lcom/loopme/video360/MD360Director;

    .line 32
    new-instance v0, Lcom/loopme/video360/objects/MDSphere3D;

    invoke-direct {v0}, Lcom/loopme/video360/objects/MDSphere3D;-><init>()V

    iput-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mObject3D:Lcom/loopme/video360/objects/MDSphere3D;

    .line 33
    new-instance v0, Lcom/loopme/video360/MD360Program;

    invoke-static {p1}, Lcom/loopme/video360/MD360Renderer$Builder;->access$300(Lcom/loopme/video360/MD360Renderer$Builder;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/loopme/video360/MD360Program;-><init>(I)V

    iput-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mProgram:Lcom/loopme/video360/MD360Program;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/loopme/video360/MD360Renderer$Builder;Lcom/loopme/video360/MD360Renderer$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/loopme/video360/MD360Renderer;-><init>(Lcom/loopme/video360/MD360Renderer$Builder;)V

    return-void
.end method

.method private initObject3D()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mObject3D:Lcom/loopme/video360/objects/MDSphere3D;

    iget-object v1, p0, Lcom/loopme/video360/MD360Renderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loopme/video360/objects/MDSphere3D;->loadObj(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mObject3D:Lcom/loopme/video360/objects/MDSphere3D;

    iget-object v1, p0, Lcom/loopme/video360/MD360Renderer;->mProgram:Lcom/loopme/video360/MD360Program;

    invoke-virtual {v0, v1}, Lcom/loopme/video360/objects/MDSphere3D;->uploadDataToProgram(Lcom/loopme/video360/MD360Program;)V

    .line 107
    return-void
.end method

.method private initProgram()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mProgram:Lcom/loopme/video360/MD360Program;

    iget-object v1, p0, Lcom/loopme/video360/MD360Renderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loopme/video360/MD360Program;->build(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method private initTexture()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mTexture:Lcom/loopme/video360/texture/MD360Texture;

    invoke-virtual {v0}, Lcom/loopme/video360/texture/MD360Texture;->create()V

    .line 99
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/loopme/video360/MD360Renderer$Builder;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/loopme/video360/MD360Renderer$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loopme/video360/MD360Renderer$Builder;-><init>(Lcom/loopme/video360/MD360Renderer$1;)V

    .line 111
    invoke-static {v0, p0}, Lcom/loopme/video360/MD360Renderer$Builder;->access$002(Lcom/loopme/video360/MD360Renderer$Builder;Landroid/content/Context;)Landroid/content/Context;

    .line 112
    return-object v0
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 68
    iget-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mStatus:Lcom/loopme/video360/MDStatusManager$Status;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mStatus:Lcom/loopme/video360/MDStatusManager$Status;

    invoke-virtual {v0}, Lcom/loopme/video360/MDStatusManager$Status;->isAllReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mTexture:Lcom/loopme/video360/texture/MD360Texture;

    invoke-virtual {v0, p0}, Lcom/loopme/video360/texture/MD360Texture;->syncDrawInContext(Lcom/loopme/video360/texture/MD360Texture$ISyncDrawCallback;)V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mStatus:Lcom/loopme/video360/MDStatusManager$Status;

    invoke-virtual {v0}, Lcom/loopme/video360/MDStatusManager$Status;->ready()V

    goto :goto_0
.end method

.method public onDrawOpenGL()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mProgram:Lcom/loopme/video360/MD360Program;

    invoke-virtual {v0}, Lcom/loopme/video360/MD360Program;->use()V

    .line 80
    const-string v0, "mProgram use"

    invoke-static {v0}, Lcom/loopme/video360/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mProgram:Lcom/loopme/video360/MD360Program;

    invoke-virtual {v0}, Lcom/loopme/video360/MD360Program;->getTextureUniformHandle()I

    move-result v0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 84
    const-string v0, "glUniform1i"

    invoke-static {v0}, Lcom/loopme/video360/common/GLUtil;->glCheck(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mDirector:Lcom/loopme/video360/MD360Director;

    iget-object v1, p0, Lcom/loopme/video360/MD360Renderer;->mProgram:Lcom/loopme/video360/MD360Program;

    invoke-virtual {v0, v1}, Lcom/loopme/video360/MD360Director;->shot(Lcom/loopme/video360/MD360Program;)V

    .line 90
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/loopme/video360/MD360Renderer;->mObject3D:Lcom/loopme/video360/objects/MDSphere3D;

    invoke-virtual {v1}, Lcom/loopme/video360/objects/MDSphere3D;->getNumIndices()I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 91
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 59
    iget-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mTexture:Lcom/loopme/video360/texture/MD360Texture;

    invoke-virtual {v0, p2, p3}, Lcom/loopme/video360/texture/MD360Texture;->resize(II)V

    .line 62
    iget-object v0, p0, Lcom/loopme/video360/MD360Renderer;->mDirector:Lcom/loopme/video360/MD360Director;

    invoke-virtual {v0, p2, p3}, Lcom/loopme/video360/MD360Director;->updateProjection(II)V

    .line 63
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 42
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 45
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 48
    invoke-direct {p0}, Lcom/loopme/video360/MD360Renderer;->initProgram()V

    .line 49
    invoke-direct {p0}, Lcom/loopme/video360/MD360Renderer;->initTexture()V

    .line 50
    invoke-direct {p0}, Lcom/loopme/video360/MD360Renderer;->initObject3D()V

    .line 51
    return-void
.end method

.method public setStatus(Lcom/loopme/video360/MDStatusManager$Status;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/loopme/video360/MD360Renderer;->mStatus:Lcom/loopme/video360/MDStatusManager$Status;

    .line 117
    return-void
.end method
