.class Lcom/loopme/BaseAd$5;
.super Ljava/lang/Object;
.source "BaseAd.java"

# interfaces
.implements Lcom/loopme/common/AdFetcherTimer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/BaseAd;->startFetcherTimer()V
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
    .line 362
    iput-object p1, p0, Lcom/loopme/BaseAd$5;->this$0:Lcom/loopme/BaseAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/loopme/BaseAd$5;->this$0:Lcom/loopme/BaseAd;

    invoke-virtual {v0}, Lcom/loopme/BaseAd;->cancelFetcher()V

    .line 367
    iget-object v0, p0, Lcom/loopme/BaseAd$5;->this$0:Lcom/loopme/BaseAd;

    new-instance v1, Lcom/loopme/common/LoopMeError;

    const-string v2, "Ad processing timeout"

    invoke-direct {v1, v2}, Lcom/loopme/common/LoopMeError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/loopme/BaseAd;->onAdLoadFail(Lcom/loopme/common/LoopMeError;)V

    .line 368
    return-void
.end method
