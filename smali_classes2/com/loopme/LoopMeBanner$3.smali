.class Lcom/loopme/LoopMeBanner$3;
.super Ljava/lang/Object;
.source "LoopMeBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/LoopMeBanner;->onAdLoadFail(Lcom/loopme/common/LoopMeError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/LoopMeBanner;

.field final synthetic val$error:Lcom/loopme/common/LoopMeError;


# direct methods
.method constructor <init>(Lcom/loopme/LoopMeBanner;Lcom/loopme/common/LoopMeError;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/loopme/LoopMeBanner$3;->this$0:Lcom/loopme/LoopMeBanner;

    iput-object p2, p0, Lcom/loopme/LoopMeBanner$3;->val$error:Lcom/loopme/common/LoopMeError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/loopme/LoopMeBanner$3;->this$0:Lcom/loopme/LoopMeBanner;

    iget-object v1, p0, Lcom/loopme/LoopMeBanner$3;->val$error:Lcom/loopme/common/LoopMeError;

    invoke-virtual {v0, v1}, Lcom/loopme/LoopMeBanner;->onLoopMeBannerLoadFail(Lcom/loopme/common/LoopMeError;)V

    .line 493
    return-void
.end method
