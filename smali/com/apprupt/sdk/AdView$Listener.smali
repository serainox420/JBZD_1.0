.class public interface abstract Lcom/apprupt/sdk/AdView$Listener;
.super Ljava/lang/Object;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAdLoaded(Lcom/apprupt/sdk/AdView;)V
.end method

.method public abstract onAdLoadingFailure(Ljava/lang/String;Lcom/apprupt/sdk/AdView;)V
.end method

.method public abstract onFirstTap(Lcom/apprupt/sdk/AdView;)V
.end method
