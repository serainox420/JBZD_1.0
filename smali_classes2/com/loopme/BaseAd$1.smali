.class Lcom/loopme/BaseAd$1;
.super Ljava/lang/Object;
.source "BaseAd.java"

# interfaces
.implements Lcom/loopme/tasks/AdFetcher$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/BaseAd;->initAdFetcherListener()Lcom/loopme/tasks/AdFetcher$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/BaseAd;


# direct methods
.method constructor <init>(Lcom/loopme/BaseAd;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/loopme/BaseAd$1;->this$0:Lcom/loopme/BaseAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/loopme/common/AdParams;Lcom/loopme/common/LoopMeError;)V
    .locals 4

    .prologue
    .line 261
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/loopme/common/AdParams;->getPackageIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    invoke-virtual {p1}, Lcom/loopme/common/AdParams;->getPackageIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/loopme/common/Utils;->isPackageInstalled(Ljava/util/List;)Z

    move-result v0

    .line 265
    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/loopme/BaseAd$1;->this$0:Lcom/loopme/BaseAd;

    const/16 v1, 0xc8

    iput v1, v0, Lcom/loopme/BaseAd;->mAdState:I

    .line 267
    iget-object v0, p0, Lcom/loopme/BaseAd$1;->this$0:Lcom/loopme/BaseAd;

    const/4 v1, 0x0

    new-instance v2, Lcom/loopme/common/LoopMeError;

    const-string v3, "No valid ads found"

    invoke-direct {v2, v3}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/loopme/BaseAd;->access$000(Lcom/loopme/BaseAd;Lcom/loopme/common/AdParams;Lcom/loopme/common/LoopMeError;)V

    .line 268
    new-instance v0, Lcom/loopme/common/EventManager;

    invoke-direct {v0}, Lcom/loopme/common/EventManager;-><init>()V

    .line 269
    invoke-virtual {p1}, Lcom/loopme/common/AdParams;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loopme/common/EventManager;->trackSdkEvent(Ljava/lang/String;)V

    .line 277
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/loopme/BaseAd$1;->this$0:Lcom/loopme/BaseAd;

    invoke-static {v0, p1, p2}, Lcom/loopme/BaseAd;->access$000(Lcom/loopme/BaseAd;Lcom/loopme/common/AdParams;Lcom/loopme/common/LoopMeError;)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/loopme/BaseAd$1;->this$0:Lcom/loopme/BaseAd;

    invoke-static {v0, p1, p2}, Lcom/loopme/BaseAd;->access$000(Lcom/loopme/BaseAd;Lcom/loopme/common/AdParams;Lcom/loopme/common/LoopMeError;)V

    goto :goto_0
.end method
