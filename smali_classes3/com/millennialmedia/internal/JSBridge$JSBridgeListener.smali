.class public interface abstract Lcom/millennialmedia/internal/JSBridge$JSBridgeListener;
.super Ljava/lang/Object;
.source "JSBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/JSBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JSBridgeListener"
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract expand(Lcom/millennialmedia/internal/SizableStateManager$ExpandParams;)Z
.end method

.method public abstract onAdLeftApplication()V
.end method

.method public abstract onInjectedScriptsLoaded()V
.end method

.method public abstract onJSBridgeReady()V
.end method

.method public abstract resize(Lcom/millennialmedia/internal/SizableStateManager$ResizeParams;)Z
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract showCloseIndicator(Z)V
.end method
