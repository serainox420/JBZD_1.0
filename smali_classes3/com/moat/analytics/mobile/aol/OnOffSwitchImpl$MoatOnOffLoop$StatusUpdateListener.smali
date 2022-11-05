.class interface abstract Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$StatusUpdateListener;
.super Ljava/lang/Object;
.source "OnOffSwitchImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "StatusUpdateListener"
.end annotation


# virtual methods
.method public abstract onStatusCheck(Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation
.end method
