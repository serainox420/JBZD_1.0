.class Lcom/loopme/LoopMeBanner$2;
.super Ljava/lang/Object;
.source "LoopMeBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/LoopMeBanner;->onLoopMeBannerVideoDidReachEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/LoopMeBanner;


# direct methods
.method constructor <init>(Lcom/loopme/LoopMeBanner;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/loopme/LoopMeBanner$2;->this$0:Lcom/loopme/LoopMeBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/loopme/LoopMeBanner$2;->this$0:Lcom/loopme/LoopMeBanner;

    iget-object v0, v0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/loopme/LoopMeBanner$2;->this$0:Lcom/loopme/LoopMeBanner;

    iget-object v0, v0, Lcom/loopme/LoopMeBanner;->mAdController:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->switchToNormalMode()V

    .line 448
    :cond_0
    return-void
.end method
