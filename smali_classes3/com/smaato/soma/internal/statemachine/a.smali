.class public interface abstract Lcom/smaato/soma/internal/statemachine/a;
.super Ljava/lang/Object;
.source "BannerStateDelegate.java"


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToTriggerTransitionDisplayBanner;
        }
    .end annotation
.end method

.method public abstract b()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToEnterBannerStateExpanded;
        }
    .end annotation
.end method

.method public abstract c()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToExitBannerStateExpanded;
        }
    .end annotation
.end method

.method public abstract d()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToTriggerTransitionCloseNoOrmmaBanner;
        }
    .end annotation
.end method

.method public abstract e()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToTriggerTransitionCloseOrmmaBanner;
        }
    .end annotation
.end method

.method public abstract f()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToSetBannerStateToEmpty;
        }
    .end annotation
.end method

.method public abstract g()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToExitEmptyState;
        }
    .end annotation
.end method

.method public abstract h()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerDisplayedEnteredFailedException;
        }
    .end annotation
.end method

.method public abstract i()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToExitBannerStateDisplayed;
        }
    .end annotation
.end method

.method public abstract j()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToTriggerTransitionExpandBanner;
        }
    .end annotation
.end method
