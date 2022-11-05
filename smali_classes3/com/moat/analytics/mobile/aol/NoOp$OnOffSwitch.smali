.class Lcom/moat/analytics/mobile/aol/NoOp$OnOffSwitch;
.super Ljava/lang/Object;
.source "NoOp.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/OnOffSwitch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/NoOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnOffSwitch"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->OFF:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    return-object v0
.end method

.method public getVWIntervalMillis()I
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0xc8

    return v0
.end method

.method public isDebugActive()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public register(Lcom/moat/analytics/mobile/aol/OnOffSwitch$MoatOnOrOffListener;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public setDebugLogging(Z)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
