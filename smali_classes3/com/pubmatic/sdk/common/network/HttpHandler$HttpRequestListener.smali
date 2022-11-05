.class public interface abstract Lcom/pubmatic/sdk/common/network/HttpHandler$HttpRequestListener;
.super Ljava/lang/Object;
.source "HttpHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/network/HttpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HttpRequestListener"
.end annotation


# virtual methods
.method public abstract onErrorOccured(IILjava/lang/String;)V
.end method

.method public abstract onRequestComplete(Lcom/pubmatic/sdk/common/network/HttpResponse;Ljava/lang/String;)V
.end method

.method public abstract overrideRedirection()Z
.end method
