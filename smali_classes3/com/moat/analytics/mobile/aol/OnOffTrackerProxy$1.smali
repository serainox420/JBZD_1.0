.class Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$1;
.super Ljava/lang/Object;
.source "OnOffTrackerProxy.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/OnOffSwitch$MoatOnOrOffListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;-><init>(Lcom/moat/analytics/mobile/aol/OnOffSwitch;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Instantiator;Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$Postponer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;

.field private timeRegistered:J


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;)V
    .locals 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$1;->this$0:Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$1;->timeRegistered:J

    return-void
.end method


# virtual methods
.method public getTimeRegistered()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$1;->timeRegistered:J

    return-wide v0
.end method

.method public onMoatOff()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 87
    return-void
.end method

.method public onMoatOn()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$1;->this$0:Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->access$100(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;)V

    .line 84
    return-void
.end method

.method public wasTriggered()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy$1;->this$0:Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;->access$200(Lcom/moat/analytics/mobile/aol/OnOffTrackerProxy;)Z

    move-result v0

    return v0
.end method
