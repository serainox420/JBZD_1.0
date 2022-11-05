.class public interface abstract Lcom/millennialmedia/InlineAd$InlineListener;
.super Ljava/lang/Object;
.source "InlineAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/InlineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InlineListener"
.end annotation


# virtual methods
.method public abstract onAdLeftApplication(Lcom/millennialmedia/InlineAd;)V
.end method

.method public abstract onClicked(Lcom/millennialmedia/InlineAd;)V
.end method

.method public abstract onCollapsed(Lcom/millennialmedia/InlineAd;)V
.end method

.method public abstract onExpanded(Lcom/millennialmedia/InlineAd;)V
.end method

.method public abstract onRequestFailed(Lcom/millennialmedia/InlineAd;Lcom/millennialmedia/InlineAd$InlineErrorStatus;)V
.end method

.method public abstract onRequestSucceeded(Lcom/millennialmedia/InlineAd;)V
.end method

.method public abstract onResize(Lcom/millennialmedia/InlineAd;II)V
.end method

.method public abstract onResized(Lcom/millennialmedia/InlineAd;IIZ)V
.end method
