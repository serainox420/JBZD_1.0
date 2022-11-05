.class public interface abstract Lcom/openx/view/tp/chain/network/SDKChainLoadListener;
.super Ljava/lang/Object;
.source "SDKChainLoadListener.java"

# interfaces
.implements Lcom/openx/core/network/BaseResponseHandler;


# virtual methods
.method public abstract onSDKChainLoadFail(Lcom/openx/errors/AdError;)V
.end method

.method public abstract onSDKChainLoadNonCriticalError(Lcom/openx/errors/AdError;)V
.end method

.method public abstract onSDKChainLoadSuccess(Lcom/openx/view/tp/chain/parser/ChainResponse;)V
.end method
