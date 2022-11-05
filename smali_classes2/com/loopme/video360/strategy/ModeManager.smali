.class public abstract Lcom/loopme/video360/strategy/ModeManager;
.super Ljava/lang/Object;
.source "ModeManager.java"

# interfaces
.implements Lcom/loopme/video360/strategy/IModeStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/loopme/video360/strategy/IModeStrategy;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/loopme/video360/strategy/IModeStrategy;"
    }
.end annotation


# instance fields
.field private mStrategy:Lcom/loopme/video360/strategy/IModeStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initMode(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/loopme/video360/strategy/ModeManager;->mStrategy:Lcom/loopme/video360/strategy/IModeStrategy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loopme/video360/strategy/ModeManager;->mStrategy:Lcom/loopme/video360/strategy/IModeStrategy;

    invoke-interface {v0, p1}, Lcom/loopme/video360/strategy/IModeStrategy;->off(Landroid/content/Context;)V

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/loopme/video360/strategy/ModeManager;->createStrategy()Lcom/loopme/video360/strategy/IModeStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/video360/strategy/ModeManager;->mStrategy:Lcom/loopme/video360/strategy/IModeStrategy;

    .line 22
    iget-object v0, p0, Lcom/loopme/video360/strategy/ModeManager;->mStrategy:Lcom/loopme/video360/strategy/IModeStrategy;

    invoke-interface {v0, p1}, Lcom/loopme/video360/strategy/IModeStrategy;->on(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected abstract createStrategy()Lcom/loopme/video360/strategy/IModeStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected getStrategy()Lcom/loopme/video360/strategy/IModeStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/loopme/video360/strategy/ModeManager;->mStrategy:Lcom/loopme/video360/strategy/IModeStrategy;

    return-object v0
.end method

.method public off(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/loopme/video360/strategy/ModeManager;->mStrategy:Lcom/loopme/video360/strategy/IModeStrategy;

    invoke-interface {v0, p1}, Lcom/loopme/video360/strategy/IModeStrategy;->off(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public on(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/loopme/video360/strategy/ModeManager;->mStrategy:Lcom/loopme/video360/strategy/IModeStrategy;

    invoke-interface {v0, p1}, Lcom/loopme/video360/strategy/IModeStrategy;->on(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public prepare(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/loopme/video360/strategy/ModeManager;->initMode(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public abstract switchMode(Landroid/content/Context;)V
.end method
