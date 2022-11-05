.class Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$1;
.super Ljava/lang/Object;
.source "OnOffSwitchImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->runUnsafe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;

.field final synthetic val$onOrOff:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$1;->this$0:Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;

    iput-object p2, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$1;->val$onOrOff:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$1;->this$0:Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;

    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;->access$500(Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop;)Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$StatusUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$1;->val$onOrOff:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/aol/OnOffSwitchImpl$MoatOnOffLoop$StatusUpdateListener;->onStatusCheck(Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    invoke-static {v0}, Lcom/moat/analytics/mobile/aol/base/exception/Exceptions;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
