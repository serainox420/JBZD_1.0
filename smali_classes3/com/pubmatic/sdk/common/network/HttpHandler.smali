.class public Lcom/pubmatic/sdk/common/network/HttpHandler;
.super Ljava/lang/Object;
.source "HttpHandler.java"

# interfaces
.implements Lcom/pubmatic/sdk/common/network/HttpWorker$HttpRedirectListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;
    }
.end annotation


# instance fields
.field private mHttpRequest:Lcom/pubmatic/sdk/common/network/HttpRequest;

.field private mHttpRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pubmatic/sdk/common/network/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;


# direct methods
.method public constructor <init>(Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;Lcom/pubmatic/sdk/common/network/HttpRequest;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpHandler;->mHttpRequestList:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/HttpHandler;->mListener:Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;

    .line 31
    iput-object p2, p0, Lcom/pubmatic/sdk/common/network/HttpHandler;->mHttpRequest:Lcom/pubmatic/sdk/common/network/HttpRequest;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pubmatic/sdk/common/network/HttpRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpHandler;->mHttpRequestList:Ljava/util/ArrayList;

    .line 25
    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/HttpHandler;->mListener:Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;

    .line 26
    iput-object p2, p0, Lcom/pubmatic/sdk/common/network/HttpHandler;->mHttpRequestList:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method private execute(Lcom/pubmatic/sdk/common/network/HttpRequest;)V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/pubmatic/sdk/common/network/HttpWorker;

    invoke-direct {v0}, Lcom/pubmatic/sdk/common/network/HttpWorker;-><init>()V

    invoke-virtual {v0, p1, p0}, Lcom/pubmatic/sdk/common/network/HttpWorker;->execute(Lcom/pubmatic/sdk/common/network/HttpRequest;Lcom/pubmatic/sdk/common/network/HttpWorker$HttpRedirectListener;)Lcom/pubmatic/sdk/common/network/HttpResponse;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpHandler;->mListener:Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;

    if-eqz v1, :cond_0

    .line 52
    if-eqz v0, :cond_2

    .line 54
    iget v1, v0, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorType:I

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpHandler;->mListener:Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;

    iget v2, v0, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorType:I

    iget v0, v0, Lcom/pubmatic/sdk/common/network/HttpResponse;->errorCode:I

    .line 57
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-interface {v1, v2, v0, v3}, Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;->onErrorOccured(IILjava/lang/String;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/pubmatic/sdk/common/network/HttpHandler;->mListener:Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;->onRequestComplete(Lcom/pubmatic/sdk/common/network/HttpResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpHandler;->mListener:Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;

    const/16 v1, -0x3e7

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/network/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;->onErrorOccured(IILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public overrideRedirection()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpHandler;->mListener:Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpHandler;->mListener:Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;

    invoke-interface {v0}, Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;->overrideRedirection()Z

    move-result v0

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpHandler;->mHttpRequestList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpHandler;->mHttpRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/network/HttpRequest;

    .line 39
    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/common/network/HttpHandler;->execute(Lcom/pubmatic/sdk/common/network/HttpRequest;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpHandler;->mHttpRequest:Lcom/pubmatic/sdk/common/network/HttpRequest;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/HttpHandler;->mHttpRequest:Lcom/pubmatic/sdk/common/network/HttpRequest;

    invoke-direct {p0, v0}, Lcom/pubmatic/sdk/common/network/HttpHandler;->execute(Lcom/pubmatic/sdk/common/network/HttpRequest;)V

    .line 45
    :cond_1
    return-void
.end method
