.class public Lcom/loopme/ViewController;
.super Ljava/lang/Object;
.source "ViewController.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/loopme/IViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/ViewController$Callback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/loopme/ViewController$Callback;

.field private mResizeHeight:I

.field private mResizeWidth:I

.field private mStretch:Lcom/loopme/constants/StretchOption;

.field private mTextureView:Landroid/view/TextureView;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/loopme/ViewController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/ViewController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/loopme/ViewController$Callback;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/loopme/constants/StretchOption;->NONE:Lcom/loopme/constants/StretchOption;

    iput-object v0, p0, Lcom/loopme/ViewController;->mStretch:Lcom/loopme/constants/StretchOption;

    .line 39
    iput-object p1, p0, Lcom/loopme/ViewController;->mCallback:Lcom/loopme/ViewController$Callback;

    .line 40
    return-void
.end method

.method private resizeVideo()V
    .locals 6

    .prologue
    .line 79
    sget-object v0, Lcom/loopme/ViewController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resizeVideo()"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/loopme/ViewController;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/loopme/ViewController;->mResizeWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/loopme/ViewController;->mResizeHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/loopme/ViewController;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/loopme/ViewController;->mVideoHeight:I

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/loopme/ViewController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 87
    iget v1, p0, Lcom/loopme/ViewController;->mVideoWidth:I

    iget v2, p0, Lcom/loopme/ViewController;->mVideoHeight:I

    iget v3, p0, Lcom/loopme/ViewController;->mResizeWidth:I

    iget v4, p0, Lcom/loopme/ViewController;->mResizeHeight:I

    iget-object v5, p0, Lcom/loopme/ViewController;->mStretch:Lcom/loopme/constants/StretchOption;

    invoke-static/range {v0 .. v5}, Lcom/loopme/common/Utils;->calculateNewLayoutParams(Landroid/widget/FrameLayout$LayoutParams;IIIILcom/loopme/constants/StretchOption;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/loopme/ViewController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public buildVideoAdView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/loopme/adview/AdView;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loopme/ViewController;->mTextureView:Landroid/view/TextureView;

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/loopme/ViewController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setBackgroundColor(I)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/loopme/ViewController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 50
    invoke-virtual {p3, v2}, Lcom/loopme/adview/AdView;->setBackgroundColor(I)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p3, v3, v0}, Lcom/loopme/adview/AdView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 52
    const/high16 v0, -0x1000000

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 53
    iget-object v0, p0, Lcom/loopme/ViewController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p2, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 54
    invoke-virtual {p3}, Lcom/loopme/adview/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p3}, Lcom/loopme/adview/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 57
    :cond_1
    invoke-virtual {p2, p3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 58
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public initVRLibrary(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/loopme/ViewController;->mCallback:Lcom/loopme/ViewController$Callback;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/loopme/ViewController;->mCallback:Lcom/loopme/ViewController$Callback;

    invoke-interface {v0, p1}, Lcom/loopme/ViewController$Callback;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/loopme/ViewController;->resizeVideo()V

    .line 144
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/loopme/ViewController;->mCallback:Lcom/loopme/ViewController$Callback;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/loopme/ViewController;->mCallback:Lcom/loopme/ViewController$Callback;

    invoke-interface {v0}, Lcom/loopme/ViewController$Callback;->onSurfaceTextureDestroyed()V

    .line 156
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public rebuildView(Landroid/view/ViewGroup;Lcom/loopme/adview/AdView;)V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/loopme/ViewController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "rebuildView"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/loopme/ViewController;->mTextureView:Landroid/view/TextureView;

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 67
    iget-object v0, p0, Lcom/loopme/ViewController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/loopme/ViewController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/loopme/ViewController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    :cond_2
    invoke-virtual {p2}, Lcom/loopme/adview/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {p2}, Lcom/loopme/adview/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/loopme/ViewController;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setStretchParam(Lcom/loopme/constants/StretchOption;)V
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/loopme/ViewController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setStretchParam"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/loopme/ViewController;->mStretch:Lcom/loopme/constants/StretchOption;

    .line 111
    return-void
.end method

.method public setVideoSize(II)V
    .locals 3

    .prologue
    .line 102
    sget-object v0, Lcom/loopme/ViewController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iput p1, p0, Lcom/loopme/ViewController;->mVideoWidth:I

    .line 104
    iput p2, p0, Lcom/loopme/ViewController;->mVideoHeight:I

    .line 105
    return-void
.end method

.method public setViewSize(II)V
    .locals 3

    .prologue
    .line 95
    sget-object v0, Lcom/loopme/ViewController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iput p1, p0, Lcom/loopme/ViewController;->mResizeWidth:I

    .line 97
    iput p2, p0, Lcom/loopme/ViewController;->mResizeHeight:I

    .line 98
    return-void
.end method
