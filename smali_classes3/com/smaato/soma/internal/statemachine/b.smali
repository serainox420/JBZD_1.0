.class public interface abstract Lcom/smaato/soma/internal/statemachine/b;
.super Ljava/lang/Object;
.source "LoadingStateDelegate.java"


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/StateBlockedEnteredFailedException;
        }
    .end annotation
.end method

.method public abstract b()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/StateIdleEnteredException;
        }
    .end annotation
.end method

.method public abstract c()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerLoadingEnteredFailedException;
        }
    .end annotation
.end method

.method public abstract d()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TransitionLoadXMLFailedException;
        }
    .end annotation
.end method

.method public abstract e()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TransitionFinishLoadingFailedException;
        }
    .end annotation
.end method

.method public abstract f()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/StateIdleExitFailedException;
        }
    .end annotation
.end method

.method public abstract g()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/StateXMLLoadingEnteredFailedException;
        }
    .end annotation
.end method

.method public abstract h()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/StateXMLLoadingExitFailedException;
        }
    .end annotation
.end method

.method public abstract i()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/StateBlockedExitFailedException;
        }
    .end annotation
.end method

.method public abstract j()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerLoadingExitFailedException;
        }
    .end annotation
.end method

.method public abstract k()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TransitionLoadBannerFailedException;
        }
    .end annotation
.end method

.method public abstract l()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TransitionBlockLoadingFailedException;
        }
    .end annotation
.end method

.method public abstract m()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TransitionUnblockLoadingFailedException;
        }
    .end annotation
.end method

.method public abstract n()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/TransitionErrorLoadingFailedException;
        }
    .end annotation
.end method
