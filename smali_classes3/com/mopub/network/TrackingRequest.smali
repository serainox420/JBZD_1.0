.class public Lcom/mopub/network/TrackingRequest;
.super Lcom/mopub/volley/Request;
.source "TrackingRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/TrackingRequest$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/volley/Request",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/mopub/network/TrackingRequest$Listener;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/mopub/network/TrackingRequest$Listener;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-direct {p0, v3, p1, p2}, Lcom/mopub/volley/Request;-><init>(ILjava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 39
    iput-object p2, p0, Lcom/mopub/network/TrackingRequest;->a:Lcom/mopub/network/TrackingRequest$Listener;

    .line 40
    invoke-virtual {p0, v3}, Lcom/mopub/network/TrackingRequest;->setShouldCache(Z)Lcom/mopub/volley/Request;

    .line 41
    new-instance v0, Lcom/mopub/volley/DefaultRetryPolicy;

    const/16 v1, 0x9c4

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v2}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/mopub/network/TrackingRequest;->setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;

    .line 45
    return-void
.end method

.method public static makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-static {p0, p1, v0, v0}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;Lcom/mopub/network/TrackingRequest$Listener;Lcom/mopub/common/event/BaseEvent$Name;)V

    .line 162
    return-void
.end method

.method public static makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;Lcom/mopub/common/event/BaseEvent$Name;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/mopub/common/event/BaseEvent$Name;",
            ")V"
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;Lcom/mopub/network/TrackingRequest$Listener;Lcom/mopub/common/event/BaseEvent$Name;)V

    .line 168
    return-void
.end method

.method public static makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;Lcom/mopub/network/TrackingRequest$Listener;Lcom/mopub/common/event/BaseEvent$Name;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/mopub/network/TrackingRequest$Listener;",
            "Lcom/mopub/common/event/BaseEvent$Name;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 133
    :cond_0
    return-void

    .line 107
    :cond_1
    invoke-static {p1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v1

    .line 108
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 113
    new-instance v3, Lcom/mopub/network/TrackingRequest$1;

    invoke-direct {v3, p2, v0}, Lcom/mopub/network/TrackingRequest$1;-><init>(Lcom/mopub/network/TrackingRequest$Listener;Ljava/lang/String;)V

    .line 130
    new-instance v4, Lcom/mopub/network/TrackingRequest;

    invoke-direct {v4, v0, v3}, Lcom/mopub/network/TrackingRequest;-><init>(Ljava/lang/String;Lcom/mopub/network/TrackingRequest$Listener;)V

    .line 131
    invoke-virtual {v1, v4}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    goto :goto_0
.end method

.method public static makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-static {p0, p1, v0, v0}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/TrackingRequest$Listener;Lcom/mopub/common/event/BaseEvent$Name;)V

    .line 138
    return-void
.end method

.method public static makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/mopub/common/event/BaseEvent$Name;)V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/TrackingRequest$Listener;Lcom/mopub/common/event/BaseEvent$Name;)V

    .line 148
    return-void
.end method

.method public static makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/TrackingRequest$Listener;)V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/TrackingRequest$Listener;Lcom/mopub/common/event/BaseEvent$Name;)V

    .line 143
    return-void
.end method

.method public static makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/TrackingRequest$Listener;Lcom/mopub/common/event/BaseEvent$Name;)V
    .locals 2

    .prologue
    .line 154
    if-eqz p0, :cond_0

    .line 155
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;Lcom/mopub/network/TrackingRequest$Listener;Lcom/mopub/common/event/BaseEvent$Name;)V

    .line 157
    :cond_0
    return-void
.end method

.method public static makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;",
            "Lcom/mopub/mobileads/VastErrorCode;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastTracker;

    .line 79
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastTracker;->isTracked()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastTracker;->isRepeatable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    :cond_1
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastTracker;->getTrackingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastTracker;->setTracked()V

    goto :goto_0

    .line 89
    :cond_2
    new-instance v0, Lcom/mopub/mobileads/VastMacroHelper;

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastMacroHelper;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastMacroHelper;->withErrorCode(Lcom/mopub/mobileads/VastErrorCode;)Lcom/mopub/mobileads/VastMacroHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastMacroHelper;->withContentPlayHead(Ljava/lang/Integer;)Lcom/mopub/mobileads/VastMacroHelper;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mopub/mobileads/VastMacroHelper;->withAssetUri(Ljava/lang/String;)Lcom/mopub/mobileads/VastMacroHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastMacroHelper;->getUris()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected a(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget v0, p1, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 50
    new-instance v0, Lcom/mopub/network/MoPubNetworkError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to log tracking request. Response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/network/TrackingRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/network/MoPubNetworkError$Reason;->TRACKING_FAILURE:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v0, v1, v2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static {v0}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mopub/network/TrackingRequest;->deliverResponse(Ljava/lang/Void;)V

    return-void
.end method

.method public deliverResponse(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mopub/network/TrackingRequest;->a:Lcom/mopub/network/TrackingRequest$Listener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/mopub/network/TrackingRequest;->a:Lcom/mopub/network/TrackingRequest$Listener;

    invoke-virtual {p0}, Lcom/mopub/network/TrackingRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/network/TrackingRequest$Listener;->onResponse(Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method
