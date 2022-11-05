.class public Lcom/openx/video/statemachine/Muted;
.super Lcom/openx/video/statemachine/BaseState;
.source "Muted.java"


# direct methods
.method public constructor <init>(Lcom/openx/video/statemachine/StateMachine;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/openx/video/statemachine/BaseState;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    .line 15
    return-void
.end method


# virtual methods
.method public entry()V
    .locals 3

    .prologue
    .line 35
    const-string v0, "STATE_MACHINE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[[ STATE MACHINE ]]] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": ad state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openx/video/statemachine/Muted;->sm:Lcom/openx/video/statemachine/StateMachine;

    iget-object v2, v2, Lcom/openx/video/statemachine/StateMachine;->enumAdState:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/openx/video/statemachine/Muted;->sm:Lcom/openx/video/statemachine/StateMachine;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;->Muted:Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

    iput-object v1, v0, Lcom/openx/video/statemachine/StateMachine;->enumMutedState:Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

    .line 38
    iget-object v0, p0, Lcom/openx/video/statemachine/Muted;->sm:Lcom/openx/video/statemachine/StateMachine;

    iget-object v0, v0, Lcom/openx/video/statemachine/StateMachine;->enumAdState:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$AdStateEnum;->ContentPlaying:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    if-ne v0, v1, :cond_1

    .line 40
    iget-object v0, p0, Lcom/openx/video/statemachine/Muted;->sm:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->getVideoAdManager()Lcom/openx/model/video/VideoAdManager;

    move-result-object v0

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_MUTE:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-virtual {v0, v1}, Lcom/openx/model/video/VideoAdManager;->callbackEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/openx/video/statemachine/Muted;->sm:Lcom/openx/video/statemachine/StateMachine;

    iget-object v0, v0, Lcom/openx/video/statemachine/StateMachine;->enumAdState:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$AdStateEnum;->AdPlaying:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/openx/video/statemachine/Muted;->sm:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->getVideoAdManager()Lcom/openx/model/video/VideoAdManager;

    move-result-object v0

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_MUTE:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-virtual {v0, v1}, Lcom/openx/model/video/VideoAdManager;->callbackEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public process(Lcom/openx/video/statemachine/StateMachine$Event;)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
