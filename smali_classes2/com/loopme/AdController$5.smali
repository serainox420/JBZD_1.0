.class Lcom/loopme/AdController$5;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/loopme/common/SwipeListener$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/AdController;->switchToMinimizedMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/AdController;


# direct methods
.method constructor <init>(Lcom/loopme/AdController;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/loopme/AdController$5;->this$0:Lcom/loopme/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipe(Z)V
    .locals 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/loopme/AdController$5;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$300(Lcom/loopme/AdController;)Lcom/loopme/adview/AdView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/loopme/adview/AdView;->setWebViewState(I)V

    .line 329
    iget-object v0, p0, Lcom/loopme/AdController$5;->this$0:Lcom/loopme/AdController;

    invoke-static {v0}, Lcom/loopme/AdController;->access$600(Lcom/loopme/AdController;)Lcom/loopme/BaseAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->makeOutAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 331
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 332
    iget-object v1, p0, Lcom/loopme/AdController$5;->this$0:Lcom/loopme/AdController;

    invoke-static {v1}, Lcom/loopme/AdController;->access$900(Lcom/loopme/AdController;)Lcom/loopme/LoopMeBannerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/loopme/LoopMeBannerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 334
    iget-object v0, p0, Lcom/loopme/AdController$5;->this$0:Lcom/loopme/AdController;

    invoke-virtual {v0}, Lcom/loopme/AdController;->switchToNormalMode()V

    .line 335
    iget-object v0, p0, Lcom/loopme/AdController$5;->this$0:Lcom/loopme/AdController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loopme/AdController;->access$1002(Lcom/loopme/AdController;Lcom/loopme/common/MinimizedMode;)Lcom/loopme/common/MinimizedMode;

    .line 336
    return-void
.end method
