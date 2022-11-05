.class public Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;
.super Lcom/loopme/video360/strategy/ModeManager;
.source "InteractiveModeManager.java"

# interfaces
.implements Lcom/loopme/video360/strategy/interactive/IInteractiveMode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/loopme/video360/strategy/ModeManager",
        "<",
        "Lcom/loopme/video360/strategy/interactive/AbsInteractiveStrategy;",
        ">;",
        "Lcom/loopme/video360/strategy/interactive/IInteractiveMode;"
    }
.end annotation


# instance fields
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

.field private mIsResumed:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loopme/video360/MD360Director;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/loopme/video360/strategy/ModeManager;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;->mDirectorList:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method protected bridge synthetic createStrategy()Lcom/loopme/video360/strategy/IModeStrategy;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;->createStrategy()Lcom/loopme/video360/strategy/interactive/AbsInteractiveStrategy;

    move-result-object v0

    return-object v0
.end method

.method protected createStrategy()Lcom/loopme/video360/strategy/interactive/AbsInteractiveStrategy;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/loopme/video360/strategy/interactive/MotionStrategy;

    iget-object v1, p0, Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;->mDirectorList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/loopme/video360/strategy/interactive/MotionStrategy;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;->getStrategy()Lcom/loopme/video360/strategy/IModeStrategy;

    move-result-object v0

    check-cast v0, Lcom/loopme/video360/strategy/interactive/AbsInteractiveStrategy;

    invoke-virtual {v0, p1}, Lcom/loopme/video360/strategy/interactive/AbsInteractiveStrategy;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;->mIsResumed:Z

    .line 41
    invoke-virtual {p0}, Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;->getStrategy()Lcom/loopme/video360/strategy/IModeStrategy;

    move-result-object v0

    check-cast v0, Lcom/loopme/video360/strategy/interactive/AbsInteractiveStrategy;

    invoke-virtual {v0, p1}, Lcom/loopme/video360/strategy/interactive/AbsInteractiveStrategy;->onPause(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;->mIsResumed:Z

    .line 35
    invoke-virtual {p0}, Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;->getStrategy()Lcom/loopme/video360/strategy/IModeStrategy;

    move-result-object v0

    check-cast v0, Lcom/loopme/video360/strategy/interactive/AbsInteractiveStrategy;

    invoke-virtual {v0, p1}, Lcom/loopme/video360/strategy/interactive/AbsInteractiveStrategy;->onResume(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public switchMode(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;->switchMode(Landroid/content/Context;)V

    .line 24
    iget-boolean v0, p0, Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;->mIsResumed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/loopme/video360/strategy/interactive/InteractiveModeManager;->onResume(Landroid/content/Context;)V

    .line 25
    :cond_0
    return-void
.end method
