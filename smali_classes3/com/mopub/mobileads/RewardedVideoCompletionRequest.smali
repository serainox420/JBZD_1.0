.class public Lcom/mopub/mobileads/RewardedVideoCompletionRequest;
.super Lcom/mopub/volley/Request;
.source "RewardedVideoCompletionRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/volley/Request",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/volley/RetryPolicy;Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0, p1, p3}, Lcom/mopub/volley/Request;-><init>(ILjava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;->setShouldCache(Z)Lcom/mopub/volley/Request;

    .line 28
    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;->setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;

    .line 29
    iput-object p3, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;->a:Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;

    .line 30
    return-void
.end method


# virtual methods
.method protected a(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget v0, p1, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;->a:Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;->onResponse(Ljava/lang/Integer;)V

    .line 41
    return-void
.end method

.method protected synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;->a(Ljava/lang/Integer;)V

    return-void
.end method
