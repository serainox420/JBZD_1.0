.class final Lcom/mopub/network/TrackingRequest$1;
.super Ljava/lang/Object;
.source "TrackingRequest.java"

# interfaces
.implements Lcom/mopub/network/TrackingRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;Lcom/mopub/network/TrackingRequest$Listener;Lcom/mopub/common/event/BaseEvent$Name;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/network/TrackingRequest$Listener;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mopub/network/TrackingRequest$Listener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mopub/network/TrackingRequest$1;->a:Lcom/mopub/network/TrackingRequest$Listener;

    iput-object p2, p0, Lcom/mopub/network/TrackingRequest$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to hit tracking endpoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/network/TrackingRequest$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/mopub/network/TrackingRequest$1;->a:Lcom/mopub/network/TrackingRequest$Listener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/mopub/network/TrackingRequest$1;->a:Lcom/mopub/network/TrackingRequest$Listener;

    invoke-interface {v0, p1}, Lcom/mopub/network/TrackingRequest$Listener;->onErrorResponse(Lcom/mopub/volley/VolleyError;)V

    .line 128
    :cond_0
    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully hit tracking endpoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/mopub/network/TrackingRequest$1;->a:Lcom/mopub/network/TrackingRequest$Listener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mopub/network/TrackingRequest$1;->a:Lcom/mopub/network/TrackingRequest$Listener;

    invoke-interface {v0, p1}, Lcom/mopub/network/TrackingRequest$Listener;->onResponse(Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method
