.class public Lcom/loopme/LoopMeBannerView;
.super Landroid/widget/FrameLayout;
.source "LoopMeBannerView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/loopme/LoopMeBannerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/LoopMeBannerView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/loopme/LoopMeBannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 57
    invoke-virtual {p0}, Lcom/loopme/LoopMeBannerView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/loopme/LoopMeBannerView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Warning: hardware acceleration is off"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "Hardware acceleration is off"

    invoke-static {v0}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 48
    :try_start_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    sget-object v1, Lcom/loopme/LoopMeBannerView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error during onDetachedFromWindow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewSize(II)V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/loopme/LoopMeBannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 40
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 42
    invoke-virtual {p0, v0}, Lcom/loopme/LoopMeBannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    return-void
.end method
