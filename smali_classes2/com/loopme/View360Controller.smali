.class public Lcom/loopme/View360Controller;
.super Ljava/lang/Object;
.source "View360Controller.java"

# interfaces
.implements Lcom/loopme/IViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/View360Controller$Callback;
    }
.end annotation


# static fields
.field private static final ACCEL:Ljava/lang/String; = "Accelerometer"

.field private static final GYRO:Ljava/lang/String; = "Gyroscope"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/loopme/View360Controller$Callback;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mVRLibrary:Lcom/loopme/video360/MDVRLibrary;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/loopme/View360Controller;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/View360Controller;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/loopme/View360Controller$Callback;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/loopme/View360Controller;->mCallback:Lcom/loopme/View360Controller$Callback;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/loopme/View360Controller;)Lcom/loopme/View360Controller$Callback;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/loopme/View360Controller;->mCallback:Lcom/loopme/View360Controller$Callback;

    return-object v0
.end method

.method private checkIsAccelGyroPresented(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 84
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 85
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 89
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Accelerometer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/loopme/View360Controller;->mVRLibrary:Lcom/loopme/video360/MDVRLibrary;

    invoke-virtual {v2, v4}, Lcom/loopme/video360/MDVRLibrary;->setAccelSupported(Z)V

    .line 93
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Gyroscope"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/loopme/View360Controller;->mVRLibrary:Lcom/loopme/video360/MDVRLibrary;

    invoke-virtual {v0, v4}, Lcom/loopme/video360/MDVRLibrary;->setGyroSupported(Z)V

    goto :goto_0

    .line 98
    :cond_2
    return-void
.end method


# virtual methods
.method public buildVideoAdView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/loopme/adview/AdView;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loopme/View360Controller;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 51
    iget-object v0, p0, Lcom/loopme/View360Controller;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 53
    if-eqz p3, :cond_1

    .line 54
    invoke-virtual {p3, v1}, Lcom/loopme/adview/AdView;->setBackgroundColor(I)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p3, v2, v0}, Lcom/loopme/adview/AdView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 56
    invoke-virtual {p3}, Lcom/loopme/adview/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p3}, Lcom/loopme/adview/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-virtual {p2, p3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 61
    :cond_1
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/loopme/View360Controller;->mVRLibrary:Lcom/loopme/video360/MDVRLibrary;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/loopme/View360Controller;->mVRLibrary:Lcom/loopme/video360/MDVRLibrary;

    invoke-virtual {v0, p1}, Lcom/loopme/video360/MDVRLibrary;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initVRLibrary(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/loopme/View360Controller;->mVRLibrary:Lcom/loopme/video360/MDVRLibrary;

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/loopme/View360Controller;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initVRLibrary"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Lcom/loopme/video360/MDVRLibrary;->with(Landroid/content/Context;)Lcom/loopme/video360/MDVRLibrary$Builder;

    move-result-object v0

    new-instance v1, Lcom/loopme/View360Controller$1;

    invoke-direct {v1, p0}, Lcom/loopme/View360Controller$1;-><init>(Lcom/loopme/View360Controller;)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/loopme/video360/MDVRLibrary$Builder;->video(Lcom/loopme/video360/MDVRLibrary$IOnSurfaceReadyCallback;)Lcom/loopme/video360/MDVRLibrary$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/loopme/View360Controller;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 76
    invoke-virtual {v0, v1}, Lcom/loopme/video360/MDVRLibrary$Builder;->build(Landroid/opengl/GLSurfaceView;)Lcom/loopme/video360/MDVRLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/View360Controller;->mVRLibrary:Lcom/loopme/video360/MDVRLibrary;

    .line 78
    invoke-direct {p0, p1}, Lcom/loopme/View360Controller;->checkIsAccelGyroPresented(Landroid/content/Context;)V

    .line 79
    iget-object v0, p0, Lcom/loopme/View360Controller;->mVRLibrary:Lcom/loopme/video360/MDVRLibrary;

    iget-object v1, p0, Lcom/loopme/View360Controller;->mCallback:Lcom/loopme/View360Controller$Callback;

    invoke-virtual {v0, v1}, Lcom/loopme/video360/MDVRLibrary;->setEventCallback(Lcom/loopme/View360Controller$Callback;)V

    .line 81
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/loopme/View360Controller;->mVRLibrary:Lcom/loopme/video360/MDVRLibrary;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/loopme/View360Controller;->LOG_TAG:Ljava/lang/String;

    const-string v1, "VRLibrary onDestroy"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/loopme/View360Controller;->mVRLibrary:Lcom/loopme/video360/MDVRLibrary;

    invoke-virtual {v0}, Lcom/loopme/video360/MDVRLibrary;->onDestroy()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopme/View360Controller;->mVRLibrary:Lcom/loopme/video360/MDVRLibrary;

    .line 131
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/loopme/View360Controller;->mVRLibrary:Lcom/loopme/video360/MDVRLibrary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loopme/View360Controller;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loopme/View360Controller;->mVRLibrary:Lcom/loopme/video360/MDVRLibrary;

    invoke-virtual {v0}, Lcom/loopme/video360/MDVRLibrary;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/loopme/View360Controller;->LOG_TAG:Ljava/lang/String;

    const-string v1, "VRLibrary onPause"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/loopme/View360Controller;->mVRLibrary:Lcom/loopme/video360/MDVRLibrary;

    iget-object v1, p0, Lcom/loopme/View360Controller;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loopme/video360/MDVRLibrary;->onPause(Landroid/content/Context;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/loopme/View360Controller;->mVRLibrary:Lcom/loopme/video360/MDVRLibrary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loopme/View360Controller;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loopme/View360Controller;->mVRLibrary:Lcom/loopme/video360/MDVRLibrary;

    invoke-virtual {v0}, Lcom/loopme/video360/MDVRLibrary;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/loopme/View360Controller;->LOG_TAG:Ljava/lang/String;

    const-string v1, "VRLibrary onResume"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/loopme/View360Controller;->mVRLibrary:Lcom/loopme/video360/MDVRLibrary;

    iget-object v1, p0, Lcom/loopme/View360Controller;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loopme/video360/MDVRLibrary;->onResume(Landroid/content/Context;)V

    .line 114
    :cond_0
    return-void
.end method

.method public rebuildView(Landroid/view/ViewGroup;Lcom/loopme/adview/AdView;)V
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/loopme/View360Controller;->LOG_TAG:Ljava/lang/String;

    const-string v1, "rebuildView"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/loopme/View360Controller;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/loopme/View360Controller;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/loopme/View360Controller;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/loopme/View360Controller;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 142
    :cond_2
    invoke-virtual {p2}, Lcom/loopme/adview/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 143
    invoke-virtual {p2}, Lcom/loopme/adview/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 145
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 146
    iget-object v0, p0, Lcom/loopme/View360Controller;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setStretchParam(Lcom/loopme/constants/StretchOption;)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public setViewSize(II)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
