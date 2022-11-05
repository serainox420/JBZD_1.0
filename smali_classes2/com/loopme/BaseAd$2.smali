.class Lcom/loopme/BaseAd$2;
.super Ljava/lang/Object;
.source "BaseAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/BaseAd;->completeRequest(Lcom/loopme/common/AdParams;Lcom/loopme/common/LoopMeError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/BaseAd;

.field final synthetic val$error:Lcom/loopme/common/LoopMeError;

.field final synthetic val$params:Lcom/loopme/common/AdParams;


# direct methods
.method constructor <init>(Lcom/loopme/BaseAd;Lcom/loopme/common/AdParams;Lcom/loopme/common/LoopMeError;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/loopme/BaseAd$2;->this$0:Lcom/loopme/BaseAd;

    iput-object p2, p0, Lcom/loopme/BaseAd$2;->val$params:Lcom/loopme/common/AdParams;

    iput-object p3, p0, Lcom/loopme/BaseAd$2;->val$error:Lcom/loopme/common/LoopMeError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/loopme/BaseAd$2;->val$params:Lcom/loopme/common/AdParams;

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/loopme/BaseAd$2;->val$error:Lcom/loopme/common/LoopMeError;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/loopme/BaseAd$2;->this$0:Lcom/loopme/BaseAd;

    iget-object v1, p0, Lcom/loopme/BaseAd$2;->val$error:Lcom/loopme/common/LoopMeError;

    invoke-virtual {v0, v1}, Lcom/loopme/BaseAd;->onAdLoadFail(Lcom/loopme/common/LoopMeError;)V

    .line 296
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/loopme/BaseAd$2;->this$0:Lcom/loopme/BaseAd;

    new-instance v1, Lcom/loopme/common/LoopMeError;

    const-string v2, "Request timeout"

    invoke-direct {v1, v2}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/loopme/BaseAd;->onAdLoadFail(Lcom/loopme/common/LoopMeError;)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/loopme/BaseAd$2;->this$0:Lcom/loopme/BaseAd;

    iget-object v1, p0, Lcom/loopme/BaseAd$2;->val$params:Lcom/loopme/common/AdParams;

    invoke-virtual {v0, v1}, Lcom/loopme/BaseAd;->fetchAdComplete(Lcom/loopme/common/AdParams;)V

    goto :goto_0
.end method
