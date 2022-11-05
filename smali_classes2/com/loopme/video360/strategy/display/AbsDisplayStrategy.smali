.class public abstract Lcom/loopme/video360/strategy/display/AbsDisplayStrategy;
.super Ljava/lang/Object;
.source "AbsDisplayStrategy.java"

# interfaces
.implements Lcom/loopme/video360/strategy/IModeStrategy;
.implements Lcom/loopme/video360/strategy/display/IDisplayMode;


# instance fields
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
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/loopme/video360/strategy/display/AbsDisplayStrategy;->mGLSurfaceViewList:Ljava/util/List;

    .line 15
    return-void
.end method


# virtual methods
.method protected getGLSurfaceViewList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/loopme/video360/strategy/display/AbsDisplayStrategy;->mGLSurfaceViewList:Ljava/util/List;

    return-object v0
.end method

.method setVisibleSize(I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/loopme/video360/strategy/display/AbsDisplayStrategy;->getGLSurfaceViewList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 24
    if-ge v1, p1, :cond_0

    .line 25
    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 29
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 30
    goto :goto_0

    .line 27
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    goto :goto_1

    .line 31
    :cond_1
    return-void
.end method
