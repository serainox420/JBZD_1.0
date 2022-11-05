.class public Lcom/openx/view/mraid/OrientationAllowChangeEventListener;
.super Landroid/view/OrientationEventListener;
.source "OrientationAllowChangeEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationChangedListener;,
        Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationInitialShowedListener;
    }
.end annotation


# instance fields
.field private final THRESHOLD:I

.field private lastOrientation:I

.field listenerOrientationChanged:Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationChangedListener;

.field private listenerOrientationInitialShowed:Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationInitialShowedListener;

.field private screenOrientation:I

.field private showedInitialForcedOrientation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->lastOrientation:I

    .line 34
    const/4 v0, 0x5

    iput v0, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->THRESHOLD:I

    .line 64
    invoke-virtual {p0}, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->enable()V

    .line 65
    return-void
.end method

.method private getCurrentOrientation(I)I
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->isLandscape(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x2

    .line 92
    :goto_0
    return v0

    .line 84
    :cond_0
    invoke-direct {p0, p1}, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->isPortrait(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const/4 v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    iget v0, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->lastOrientation:I

    goto :goto_0
.end method

.method private isLandscape(I)Z
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x113

    if-gt p1, v0, :cond_0

    const/16 v0, 0x109

    if-ge p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x55

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5f

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPortrait(I)Z
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x163

    if-ge p1, v0, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    const/16 v0, 0xb9

    if-gt p1, v0, :cond_1

    const/16 v0, 0xaf

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 105
    invoke-direct {p0, p1}, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->getCurrentOrientation(I)I

    move-result v0

    iput v0, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->screenOrientation:I

    .line 107
    iget v0, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->screenOrientation:I

    iget v1, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->lastOrientation:I

    if-eq v0, v1, :cond_2

    .line 109
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->listenerOrientationChanged:Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationChangedListener;

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "orientation:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url: rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->screenOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->lastOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->listenerOrientationChanged:Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationChangedListener;

    iget v1, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->screenOrientation:I

    invoke-interface {v0, v1}, Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationChangedListener;->onOrientationChanged(I)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->enable()V

    .line 119
    iget v0, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->screenOrientation:I

    iput v0, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->lastOrientation:I

    .line 121
    iget-boolean v0, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->showedInitialForcedOrientation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->listenerOrientationChanged:Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationChangedListener;

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->listenerOrientationInitialShowed:Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationInitialShowedListener;

    invoke-interface {v0}, Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationInitialShowedListener;->onShowedInitital()V

    .line 128
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->showedInitialForcedOrientation:Z

    .line 130
    monitor-exit p0

    .line 136
    :cond_2
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOrientationChangedListener(Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationChangedListener;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->listenerOrientationChanged:Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationChangedListener;

    .line 53
    return-void
.end method

.method public setOrientationInitialShowedListener(Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationInitialShowedListener;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/openx/view/mraid/OrientationAllowChangeEventListener;->listenerOrientationInitialShowed:Lcom/openx/view/mraid/OrientationAllowChangeEventListener$OrientationInitialShowedListener;

    .line 58
    return-void
.end method
