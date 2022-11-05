.class public interface abstract Lcom/openx/core/network/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"

# interfaces
.implements Lcom/openx/core/network/BaseResponseHandler;


# virtual methods
.method public abstract processError(Ljava/lang/String;)V
.end method

.method public abstract processError(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract processResponse(Lcom/openx/core/network/BaseNetworkTask$GetUrlResult;)V
.end method
