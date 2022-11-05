.class public interface abstract Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;
.super Ljava/lang/Object;
.source "NativeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/NativeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeAdapterListener"
.end annotation


# virtual methods
.method public abstract initFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract initSucceeded()V
.end method

.method public abstract onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
.end method
