.class public Lcom/loopme/video360/strategy/display/DisplayModeManager;
.super Lcom/loopme/video360/strategy/ModeManager;
.source "DisplayModeManager.java"

# interfaces
.implements Lcom/loopme/video360/strategy/display/IDisplayMode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/loopme/video360/strategy/ModeManager",
        "<",
        "Lcom/loopme/video360/strategy/display/AbsDisplayStrategy;",
        ">;",
        "Lcom/loopme/video360/strategy/display/IDisplayMode;"
    }
.end annotation


# instance fields
.field private mGLSurfaceViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/loopme/video360/strategy/ModeManager;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/loopme/video360/strategy/display/DisplayModeManager;->mGLSurfaceViews:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method protected bridge synthetic createStrategy()Lcom/loopme/video360/strategy/IModeStrategy;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/loopme/video360/strategy/display/DisplayModeManager;->createStrategy()Lcom/loopme/video360/strategy/display/AbsDisplayStrategy;

    move-result-object v0

    return-object v0
.end method

.method protected createStrategy()Lcom/loopme/video360/strategy/display/AbsDisplayStrategy;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/loopme/video360/strategy/display/NormalStrategy;

    iget-object v1, p0, Lcom/loopme/video360/strategy/display/DisplayModeManager;->mGLSurfaceViews:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/loopme/video360/strategy/display/NormalStrategy;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getVisibleSize()I
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/loopme/video360/strategy/display/DisplayModeManager;->getStrategy()Lcom/loopme/video360/strategy/IModeStrategy;

    move-result-object v0

    check-cast v0, Lcom/loopme/video360/strategy/display/AbsDisplayStrategy;

    invoke-virtual {v0}, Lcom/loopme/video360/strategy/display/AbsDisplayStrategy;->getVisibleSize()I

    move-result v0

    return v0
.end method

.method public switchMode(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/loopme/video360/strategy/display/DisplayModeManager;->switchMode(Landroid/content/Context;)V

    .line 22
    return-void
.end method
