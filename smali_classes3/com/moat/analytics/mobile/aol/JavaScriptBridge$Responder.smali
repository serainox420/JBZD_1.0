.class public interface abstract Lcom/moat/analytics/mobile/aol/JavaScriptBridge$Responder;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/JavaScriptBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Responder"
.end annotation


# virtual methods
.method public abstract getJSEnvString()Ljava/lang/String;
.end method

.method public abstract getVisibilityInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation
.end method
