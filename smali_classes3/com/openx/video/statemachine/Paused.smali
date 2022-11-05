.class public Lcom/openx/video/statemachine/Paused;
.super Lcom/openx/video/statemachine/BaseState;
.source "Paused.java"

# interfaces
.implements Lcom/openx/video/statemachine/State;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/video/statemachine/Paused$1;
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
    .line 36
    const-string v0, "STATE_MACHINE"

    const-string v1, "[[[ STATE MACHINE ]]]  Paused Entry "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/openx/video/statemachine/Paused;->sm:Lcom/openx/video/statemachine/StateMachine;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->Paused:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    iput-object v1, v0, Lcom/openx/video/statemachine/StateMachine;->enumVideoState:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    .line 40
    iget-object v0, p0, Lcom/openx/video/statemachine/Paused;->sm:Lcom/openx/video/statemachine/StateMachine;

    iget-object v0, v0, Lcom/openx/video/statemachine/StateMachine;->enumWindowState:Lcom/openx/video/statemachine/StateMachine$WindowStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$WindowStateEnum;->HasFocus:Lcom/openx/video/statemachine/StateMachine$WindowStateEnum;

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/openx/video/statemachine/Paused;->sm:Lcom/openx/video/statemachine/StateMachine;

    iget-object v0, v0, Lcom/openx/video/statemachine/StateMachine;->enumAdState:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$AdStateEnum;->AdPlaying:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    if-ne v0, v1, :cond_1

    .line 45
    iget-object v0, p0, Lcom/openx/video/statemachine/Paused;->sm:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->getVideoAdManager()Lcom/openx/model/video/VideoAdManager;

    move-result-object v0

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_PAUSE:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-virtual {v0, v1}, Lcom/openx/model/video/VideoAdManager;->callbackEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/openx/video/statemachine/Paused;->sm:Lcom/openx/video/statemachine/StateMachine;

    iget-object v0, v0, Lcom/openx/video/statemachine/StateMachine;->enumAdState:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$AdStateEnum;->ContentPlaying:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    if-ne v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/openx/video/statemachine/Paused;->sm:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->getVideoAdManager()Lcom/openx/model/video/VideoAdManager;

    move-result-object v0

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_PAUSE:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-virtual {v0, v1}, Lcom/openx/model/video/VideoAdManager;->callbackEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public process(Lcom/openx/video/statemachine/StateMachine$Event;)V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/openx/video/statemachine/Paused$1;->$SwitchMap$com$openx$video$statemachine$StateMachine$Event:[I

    invoke-virtual {p1}, Lcom/openx/video/statemachine/StateMachine$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 31
    return-void
.end method
