.class public interface abstract Lcom/smaato/soma/internal/requests/d;
.super Ljava/lang/Object;
.source "HttpConnectorInterface.java"


# virtual methods
.method public abstract a(Lcom/smaato/soma/internal/c/b;)V
.end method

.method public abstract b(Ljava/net/URL;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerHttpRequestFailed;
        }
    .end annotation
.end method
