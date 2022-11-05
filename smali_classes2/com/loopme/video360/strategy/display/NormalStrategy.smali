.class public Lcom/loopme/video360/strategy/display/NormalStrategy;
.super Lcom/loopme/video360/strategy/display/AbsDisplayStrategy;
.source "NormalStrategy.java"


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
    .line 11
    invoke-direct {p0, p1}, Lcom/loopme/video360/strategy/display/AbsDisplayStrategy;-><init>(Ljava/util/List;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getVisibleSize()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public off(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public on(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/loopme/video360/strategy/display/NormalStrategy;->setVisibleSize(I)V

    .line 17
    return-void
.end method
