.class public Lcom/openx/video/statemachine/Started;
.super Lcom/openx/video/statemachine/BaseState;
.source "Started.java"

# interfaces
.implements Lcom/openx/video/statemachine/State;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/video/statemachine/Started$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/openx/video/statemachine/StateMachine;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/openx/video/statemachine/BaseState;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    .line 14
    return-void
.end method


# virtual methods
.method public entry()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "STATE_MACHINE"

    const-string v1, "[[[ STATE MACHINE ]]]  Started Entry "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/openx/video/statemachine/Started;->sm:Lcom/openx/video/statemachine/StateMachine;

    iget-object v0, v0, Lcom/openx/video/statemachine/StateMachine;->enumAdState:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$AdStateEnum;->AdPlaying:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    if-ne v0, v1, :cond_2

    .line 38
    iget-object v0, p0, Lcom/openx/video/statemachine/Started;->sm:Lcom/openx/video/statemachine/StateMachine;

    iget-object v0, v0, Lcom/openx/video/statemachine/StateMachine;->enumVideoState:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->Paused:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    if-ne v0, v1, :cond_1

    .line 41
    iget-object v0, p0, Lcom/openx/video/statemachine/Started;->sm:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->getVideoAdManager()Lcom/openx/model/video/VideoAdManager;

    move-result-object v0

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_RESUME:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-virtual {v0, v1}, Lcom/openx/model/video/VideoAdManager;->callbackEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 63
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/openx/video/statemachine/Started;->sm:Lcom/openx/video/statemachine/StateMachine;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->Started:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    iput-object v1, v0, Lcom/openx/video/statemachine/StateMachine;->enumVideoState:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    .line 65
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/openx/video/statemachine/Started;->sm:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->getVideoAdManager()Lcom/openx/model/video/VideoAdManager;

    move-result-object v0

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_START:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-virtual {v0, v1}, Lcom/openx/model/video/VideoAdManager;->callbackEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/openx/video/statemachine/Started;->sm:Lcom/openx/video/statemachine/StateMachine;

    iget-object v0, v0, Lcom/openx/video/statemachine/StateMachine;->enumAdState:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$AdStateEnum;->ContentPlaying:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/openx/video/statemachine/Started;->sm:Lcom/openx/video/statemachine/StateMachine;

    iget-object v0, v0, Lcom/openx/video/statemachine/StateMachine;->enumVideoState:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->Paused:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    if-ne v0, v1, :cond_3

    .line 54
    iget-object v0, p0, Lcom/openx/video/statemachine/Started;->sm:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->getVideoAdManager()Lcom/openx/model/video/VideoAdManager;

    move-result-object v0

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_RESUME:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-virtual {v0, v1}, Lcom/openx/model/video/VideoAdManager;->callbackEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    goto :goto_0

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/openx/video/statemachine/Started;->sm:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->getVideoAdManager()Lcom/openx/model/video/VideoAdManager;

    move-result-object v0

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_START:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-virtual {v0, v1}, Lcom/openx/model/video/VideoAdManager;->callbackEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public process(Lcom/openx/video/statemachine/StateMachine$Event;)V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/openx/video/statemachine/Started$1;->$SwitchMap$com$openx$video$statemachine$StateMachine$Event:[I

    invoke-virtual {p1}, Lcom/openx/video/statemachine/StateMachine$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 28
    return-void
.end method
