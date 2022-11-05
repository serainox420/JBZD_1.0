.class Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$2;
.super Ljava/lang/Object;
.source "OnOffSwitchImpl.java"

# interfaces
.implements Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$StatusUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;-><init>(Lcom/moat/analytics/mobile/aol/MoatNet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$2;->this$0:Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusCheck(Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->access$000()Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 64
    invoke-static {}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->access$100()Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->ON:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "MoatOnOff"

    const-string v2, "Moat enabled - Version 1.7.11"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    invoke-static {p1}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->access$002(Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;)Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    .line 69
    invoke-static {}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->access$100()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch$MoatOnOrOffListener;

    .line 71
    sget-object v3, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->ON:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    if-ne p1, v3, :cond_1

    .line 72
    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch$MoatOnOrOffListener;->onMoatOn()V

    .line 76
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 74
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitch$MoatOnOrOffListener;->onMoatOff()V

    goto :goto_1

    .line 78
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$2;->this$0:Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;->access$300(Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl;)V

    .line 81
    return-void
.end method
