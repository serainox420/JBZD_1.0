.class Lcom/mopub/common/event/ScribeEventRecorder$1;
.super Ljava/lang/Object;
.source "ScribeEventRecorder.java"

# interfaces
.implements Lcom/mopub/network/ScribeRequest$ScribeRequestFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/event/ScribeEventRecorder;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/mopub/common/event/ScribeEventRecorder;


# direct methods
.method constructor <init>(Lcom/mopub/common/event/ScribeEventRecorder;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mopub/common/event/ScribeEventRecorder$1;->b:Lcom/mopub/common/event/ScribeEventRecorder;

    iput-object p2, p0, Lcom/mopub/common/event/ScribeEventRecorder$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRequest(Lcom/mopub/network/ScribeRequest$Listener;)Lcom/mopub/network/ScribeRequest;
    .locals 4

    .prologue
    .line 103
    new-instance v0, Lcom/mopub/network/ScribeRequest;

    const-string v1, "https://analytics.mopub.com/i/jot/exchange_client_event"

    iget-object v2, p0, Lcom/mopub/common/event/ScribeEventRecorder$1;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/mopub/common/event/ScribeEventRecorder$1;->b:Lcom/mopub/common/event/ScribeEventRecorder;

    invoke-static {v3}, Lcom/mopub/common/event/ScribeEventRecorder;->a(Lcom/mopub/common/event/ScribeEventRecorder;)Lcom/mopub/common/event/EventSerializer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/mopub/network/ScribeRequest;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/mopub/common/event/EventSerializer;Lcom/mopub/network/ScribeRequest$Listener;)V

    return-object v0
.end method
