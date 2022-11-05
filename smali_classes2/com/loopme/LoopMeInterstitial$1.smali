.class Lcom/loopme/LoopMeInterstitial$1;
.super Ljava/lang/Object;
.source "LoopMeInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/LoopMeInterstitial;->onAdLoadFail(Lcom/loopme/common/LoopMeError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/LoopMeInterstitial;

.field final synthetic val$error:Lcom/loopme/common/LoopMeError;


# direct methods
.method constructor <init>(Lcom/loopme/LoopMeInterstitial;Lcom/loopme/common/LoopMeError;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/loopme/LoopMeInterstitial$1;->this$0:Lcom/loopme/LoopMeInterstitial;

    iput-object p2, p0, Lcom/loopme/LoopMeInterstitial$1;->val$error:Lcom/loopme/common/LoopMeError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/loopme/LoopMeInterstitial$1;->this$0:Lcom/loopme/LoopMeInterstitial;

    iget-object v1, p0, Lcom/loopme/LoopMeInterstitial$1;->this$0:Lcom/loopme/LoopMeInterstitial;

    iget-object v2, p0, Lcom/loopme/LoopMeInterstitial$1;->val$error:Lcom/loopme/common/LoopMeError;

    invoke-virtual {v0, v1, v2}, Lcom/loopme/LoopMeInterstitial;->onLoopMeInterstitialLoadFail(Lcom/loopme/LoopMeInterstitial;Lcom/loopme/common/LoopMeError;)V

    .line 316
    return-void
.end method
