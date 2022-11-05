.class public Lcom/loopme/video360/MDVRLibrary;
.super Ljava/lang/Object;
.source "MDVRLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/video360/MDVRLibrary$ContentType;,
        Lcom/loopme/video360/MDVRLibrary$Builder;,
        Lcom/loopme/video360/MDVRLibrary$IOnSurfaceReadyCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContentType:I

.field private mDirectorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/loopme/video360/MD360Director;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayModeManager:Lcom/loopme/video360/strategy/display/DisplayModeManager;

.field private mGLSurfaceViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mInteractiveModeManager:Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;

.field private mIsPaused:Z

.field private mMDStatusManager:Lcom/loopme/video360/MDStatusManager;

.field private mSurface:Lcom/loopme/video360/texture/MD360Texture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/loopme/video360/MDVRLibrary;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/video360/MDVRLibrary;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/loopme/video360/MDVRLibrary$Builder;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/video360/MDVRLibrary;->mIsPaused:Z

    .line 37
    invoke-static {p1}, Lcom/loopme/video360/MDVRLibrary$Builder;->access$000(Lcom/loopme/video360/MDVRLibrary$Builder;)I

    move-result v0

    iput v0, p0, Lcom/loopme/video360/MDVRLibrary;->mContentType:I

    .line 38
    invoke-static {p1}, Lcom/loopme/video360/MDVRLibrary$Builder;->access$100(Lcom/loopme/video360/MDVRLibrary$Builder;)Lcom/loopme/video360/texture/MD360Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mSurface:Lcom/loopme/video360/texture/MD360Texture;

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mDirectorList:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mGLSurfaceViewList:Ljava/util/List;

    .line 42
    new-instance v0, Lcom/loopme/video360/MDStatusManager;

    invoke-direct {v0}, Lcom/loopme/video360/MDStatusManager;-><init>()V

    iput-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mMDStatusManager:Lcom/loopme/video360/MDStatusManager;

    .line 45
    invoke-static {p1}, Lcom/loopme/video360/MDVRLibrary$Builder;->access$200(Lcom/loopme/video360/MDVRLibrary$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/loopme/video360/MDVRLibrary$Builder;->access$300(Lcom/loopme/video360/MDVRLibrary$Builder;)Landroid/opengl/GLSurfaceView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/loopme/video360/MDVRLibrary;->initWithGLSurfaceView(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V

    .line 48
    new-instance v0, Lcom/loopme/video360/strategy/display/DisplayModeManager;

    iget-object v1, p0, Lcom/loopme/video360/MDVRLibrary;->mGLSurfaceViewList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/loopme/video360/strategy/display/DisplayModeManager;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mDisplayModeManager:Lcom/loopme/video360/strategy/display/DisplayModeManager;

    .line 49
    new-instance v0, Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;

    iget-object v1, p0, Lcom/loopme/video360/MDVRLibrary;->mDirectorList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mInteractiveModeManager:Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;

    .line 51
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mDisplayModeManager:Lcom/loopme/video360/strategy/display/DisplayModeManager;

    invoke-static {p1}, Lcom/loopme/video360/MDVRLibrary$Builder;->access$200(Lcom/loopme/video360/MDVRLibrary$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loopme/video360/strategy/display/DisplayModeManager;->prepare(Landroid/content/Context;)V

    .line 52
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mInteractiveModeManager:Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;

    invoke-static {p1}, Lcom/loopme/video360/MDVRLibrary$Builder;->access$200(Lcom/loopme/video360/MDVRLibrary$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;->prepare(Landroid/content/Context;)V

    .line 54
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mMDStatusManager:Lcom/loopme/video360/MDStatusManager;

    iget-object v1, p0, Lcom/loopme/video360/MDVRLibrary;->mDisplayModeManager:Lcom/loopme/video360/strategy/display/DisplayModeManager;

    invoke-virtual {v1}, Lcom/loopme/video360/strategy/display/DisplayModeManager;->getVisibleSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/loopme/video360/MDStatusManager;->reset(I)V

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/loopme/video360/MDVRLibrary$Builder;Lcom/loopme/video360/MDVRLibrary$1;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/loopme/video360/MDVRLibrary;-><init>(Lcom/loopme/video360/MDVRLibrary$Builder;)V

    return-void
.end method

.method private initOpenGL(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Lcom/loopme/video360/texture/MD360Texture;)V
    .locals 3

    .prologue
    .line 68
    invoke-static {p1}, Lcom/loopme/video360/common/GLUtil;->supportsEs2(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 71
    invoke-static {}, Lcom/loopme/video360/MD360DirectorFactory;->createDirector()Lcom/loopme/video360/MD360Director;

    move-result-object v0

    .line 72
    invoke-static {p1}, Lcom/loopme/video360/MD360Renderer;->with(Landroid/content/Context;)Lcom/loopme/video360/MD360Renderer$Builder;

    move-result-object v1

    .line 73
    invoke-virtual {v1, p3}, Lcom/loopme/video360/MD360Renderer$Builder;->setTexture(Lcom/loopme/video360/texture/MD360Texture;)Lcom/loopme/video360/MD360Renderer$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1, v0}, Lcom/loopme/video360/MD360Renderer$Builder;->setDirector(Lcom/loopme/video360/MD360Director;)Lcom/loopme/video360/MD360Renderer$Builder;

    move-result-object v1

    iget v2, p0, Lcom/loopme/video360/MDVRLibrary;->mContentType:I

    .line 75
    invoke-virtual {v1, v2}, Lcom/loopme/video360/MD360Renderer$Builder;->setContentType(I)Lcom/loopme/video360/MD360Renderer$Builder;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/loopme/video360/MD360Renderer$Builder;->build()Lcom/loopme/video360/MD360Renderer;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/loopme/video360/MDVRLibrary;->mMDStatusManager:Lcom/loopme/video360/MDStatusManager;

    invoke-virtual {v2}, Lcom/loopme/video360/MDStatusManager;->newChild()Lcom/loopme/video360/MDStatusManager$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loopme/video360/MD360Renderer;->setStatus(Lcom/loopme/video360/MDStatusManager$Status;)V

    .line 79
    invoke-virtual {p2, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 81
    iget-object v1, p0, Lcom/loopme/video360/MDVRLibrary;->mDirectorList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mGLSurfaceViewList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 85
    const-string v0, "OpenGLES2 not supported."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private initWithGLSurfaceView(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mSurface:Lcom/loopme/video360/texture/MD360Texture;

    invoke-direct {p0, p1, p2, v0}, Lcom/loopme/video360/MDVRLibrary;->initOpenGL(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Lcom/loopme/video360/texture/MD360Texture;)V

    .line 59
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/loopme/video360/MDVRLibrary$Builder;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/loopme/video360/MDVRLibrary$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/loopme/video360/MDVRLibrary$Builder;-><init>(Landroid/content/Context;Lcom/loopme/video360/MDVRLibrary$1;)V

    return-object v0
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mInteractiveModeManager:Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;

    invoke-virtual {v0, p1}, Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/loopme/video360/MDVRLibrary;->mIsPaused:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mSurface:Lcom/loopme/video360/texture/MD360Texture;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mSurface:Lcom/loopme/video360/texture/MD360Texture;

    invoke-virtual {v0}, Lcom/loopme/video360/texture/MD360Texture;->release()V

    .line 127
    :cond_0
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/video360/MDVRLibrary;->mIsPaused:Z

    .line 100
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mInteractiveModeManager:Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;

    invoke-virtual {v0, p1}, Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;->onPause(Landroid/content/Context;)V

    .line 102
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mGLSurfaceViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 103
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/video360/MDVRLibrary;->mIsPaused:Z

    .line 91
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mInteractiveModeManager:Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;

    invoke-virtual {v0, p1}, Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;->onResume(Landroid/content/Context;)V

    .line 93
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mGLSurfaceViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 94
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method public setAccelSupported(Z)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mDirectorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopme/video360/MD360Director;

    .line 115
    invoke-virtual {v0, p1}, Lcom/loopme/video360/MD360Director;->setAccelSupported(Z)V

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public setEventCallback(Lcom/loopme/View360Controller$Callback;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mDirectorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopme/video360/MD360Director;

    .line 63
    invoke-virtual {v0, p1}, Lcom/loopme/video360/MD360Director;->setEventCallback(Lcom/loopme/View360Controller$Callback;)V

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public setGyroSupported(Z)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/loopme/video360/MDVRLibrary;->mDirectorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopme/video360/MD360Director;

    .line 109
    invoke-virtual {v0, p1}, Lcom/loopme/video360/MD360Director;->setGyroSupported(Z)V

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method
