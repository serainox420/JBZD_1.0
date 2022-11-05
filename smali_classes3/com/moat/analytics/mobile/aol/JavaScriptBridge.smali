.class interface abstract Lcom/moat/analytics/mobile/aol/JavaScriptBridge;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/aol/JavaScriptBridge$Responder;
    }
.end annotation


# virtual methods
.method public abstract installBridge(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/aol/JavaScriptBridge$Responder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation
.end method

.method public abstract removeBridge()V
.end method
