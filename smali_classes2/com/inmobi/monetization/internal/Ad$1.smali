.class Lcom/inmobi/monetization/internal/Ad$1;
.super Ljava/lang/Object;
.source "Ad.java"

# interfaces
.implements Lcom/inmobi/commons/network/abstraction/INetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/internal/Ad;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/internal/Ad;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/internal/Ad;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/inmobi/monetization/internal/Ad$1;->a:Lcom/inmobi/monetization/internal/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Lcom/inmobi/commons/network/Request;Lcom/inmobi/commons/network/Response;)V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad$1;->a:Lcom/inmobi/monetization/internal/Ad;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/Ad;->a(Lcom/inmobi/monetization/internal/Ad;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad$1;->a:Lcom/inmobi/monetization/internal/Ad;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/Ad;->c(Lcom/inmobi/monetization/internal/Ad;)Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ACTIONS_TO_MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    if-ne v0, v1, :cond_2

    .line 280
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad$1;->a:Lcom/inmobi/monetization/internal/Ad;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad$1;->a:Lcom/inmobi/monetization/internal/Ad;

    iget-object v0, v0, Lcom/inmobi/monetization/internal/Ad;->mAdListener:Lcom/inmobi/monetization/internal/IMAdListener;

    sget-object v1, Lcom/inmobi/monetization/internal/AdErrorCode;->DO_MONETIZE:Lcom/inmobi/monetization/internal/AdErrorCode;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/internal/IMAdListener;->onAdRequestFailed(Lcom/inmobi/monetization/internal/AdErrorCode;)V

    .line 287
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad$1;->a:Lcom/inmobi/monetization/internal/Ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/Ad;->setDownloadingNewAd(Z)V

    .line 289
    :cond_1
    return-void

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad$1;->a:Lcom/inmobi/monetization/internal/Ad;

    check-cast p1, Lcom/inmobi/monetization/internal/c;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/monetization/internal/Ad;->handleError(Lcom/inmobi/monetization/internal/c;Lcom/inmobi/commons/network/Response;)V

    goto :goto_0
.end method

.method public onRequestSucceded(Lcom/inmobi/commons/network/Request;Lcom/inmobi/commons/network/Response;)V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad$1;->a:Lcom/inmobi/monetization/internal/Ad;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/Ad;->a(Lcom/inmobi/monetization/internal/Ad;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/inmobi/monetization/internal/Ad$1;->a:Lcom/inmobi/monetization/internal/Ad;

    move-object v0, p1

    check-cast v0, Lcom/inmobi/monetization/internal/c;

    invoke-virtual {v1, v0, p2}, Lcom/inmobi/monetization/internal/Ad;->getDecryptedResponse(Lcom/inmobi/monetization/internal/c;Lcom/inmobi/commons/network/Response;)Lcom/inmobi/commons/network/Response;

    move-result-object v0

    .line 255
    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad$1;->a:Lcom/inmobi/monetization/internal/Ad;

    check-cast p1, Lcom/inmobi/monetization/internal/c;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/monetization/internal/Ad;->handleError(Lcom/inmobi/monetization/internal/c;Lcom/inmobi/commons/network/Response;)V

    .line 266
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad$1;->a:Lcom/inmobi/monetization/internal/Ad;

    iget-wide v2, v2, Lcom/inmobi/monetization/internal/Ad;->mFetchStartTime:J

    sub-long/2addr v0, v2

    .line 268
    iget-object v2, p0, Lcom/inmobi/monetization/internal/Ad$1;->a:Lcom/inmobi/monetization/internal/Ad;

    sget-object v3, Lcom/inmobi/monetization/internal/configs/NetworkEventType;->FETCH_COMPLETE:Lcom/inmobi/monetization/internal/configs/NetworkEventType;

    invoke-virtual {v2, p2, v0, v1, v3}, Lcom/inmobi/monetization/internal/Ad;->collectMetrics(Lcom/inmobi/commons/network/Response;JLcom/inmobi/monetization/internal/configs/NetworkEventType;)V

    .line 269
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad$1;->a:Lcom/inmobi/monetization/internal/Ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/Ad;->setDownloadingNewAd(Z)V

    .line 270
    iget-object v0, p0, Lcom/inmobi/monetization/internal/Ad$1;->a:Lcom/inmobi/monetization/internal/Ad;

    invoke-static {v0}, Lcom/inmobi/monetization/internal/Ad;->b(Lcom/inmobi/monetization/internal/Ad;)Lcom/inmobi/monetization/internal/Ad$a;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/internal/Ad$a;->removeMessages(I)V

    .line 272
    :cond_0
    return-void

    .line 261
    :cond_1
    const-string v1, "[InMobi]-[Monetization]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raw Ad Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inmobi/commons/network/Response;->getResponseBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/inmobi/monetization/internal/Ad$1;->a:Lcom/inmobi/monetization/internal/Ad;

    check-cast p1, Lcom/inmobi/monetization/internal/c;

    invoke-virtual {v1, p1, v0}, Lcom/inmobi/monetization/internal/Ad;->handleResponse(Lcom/inmobi/monetization/internal/c;Lcom/inmobi/commons/network/Response;)V

    goto :goto_0
.end method
