.class public interface abstract Lcom/openx/model/network/AdModelLoadedListener;
.super Ljava/lang/Object;
.source "AdModelLoadedListener.java"

# interfaces
.implements Lcom/openx/core/network/BaseResponseHandler;


# virtual methods
.method public abstract adModelLoadAdFail(Lcom/openx/errors/AdError;)V
.end method

.method public abstract adModelLoadAdSuccess(Lcom/openx/model/AdGroup;)V
.end method

.method public abstract adModelNonCriticalError(Lcom/openx/errors/AdError;)V
.end method
