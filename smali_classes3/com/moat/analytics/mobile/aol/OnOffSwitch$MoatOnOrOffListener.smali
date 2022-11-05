.class public interface abstract Lcom/moat/analytics/mobile/aol/OnOffSwitch$MoatOnOrOffListener;
.super Ljava/lang/Object;
.source "OnOffSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/OnOffSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MoatOnOrOffListener"
.end annotation


# virtual methods
.method public abstract getTimeRegistered()J
.end method

.method public abstract onMoatOff()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation
.end method

.method public abstract onMoatOn()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation
.end method

.method public abstract wasTriggered()Z
.end method
