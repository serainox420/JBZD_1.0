.class public Lcom/openx/video/statemachine/Prepared;
.super Lcom/openx/video/statemachine/BaseState;
.source "Prepared.java"

# interfaces
.implements Lcom/openx/video/statemachine/State;


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
    .line 43
    const-string v0, "STATE_MACHINE"

    const-string v1, "[[[ STATE MACHINE ]]]  Prepared Entry "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/openx/video/statemachine/Prepared;->sm:Lcom/openx/video/statemachine/StateMachine;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$PreparedStateEnum;->Prepared:Lcom/openx/video/statemachine/StateMachine$PreparedStateEnum;

    iput-object v1, v0, Lcom/openx/video/statemachine/StateMachine;->enumPreparedState:Lcom/openx/video/statemachine/StateMachine$PreparedStateEnum;

    .line 46
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public process(Lcom/openx/video/statemachine/StateMachine$Event;)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/openx/video/statemachine/Prepared;->sm:Lcom/openx/video/statemachine/StateMachine;

    iget-object v0, v0, Lcom/openx/video/statemachine/StateMachine;->enumAdState:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$AdStateEnum;->AdPlaying:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    if-ne v0, v1, :cond_1

    .line 22
    iget-object v0, p0, Lcom/openx/video/statemachine/Prepared;->sm:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->getVideoAdManager()Lcom/openx/model/video/VideoAdManager;

    move-result-object v0

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->AD_PREPARED:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-virtual {v0, v1}, Lcom/openx/model/video/VideoAdManager;->callbackEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/openx/video/statemachine/Prepared;->sm:Lcom/openx/video/statemachine/StateMachine;

    iget-object v0, v0, Lcom/openx/video/statemachine/StateMachine;->enumAdState:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$AdStateEnum;->ContentPlaying:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    if-ne v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/openx/video/statemachine/Prepared;->sm:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->getVideoAdManager()Lcom/openx/model/video/VideoAdManager;

    move-result-object v0

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_PREPARED:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-virtual {v0, v1}, Lcom/openx/model/video/VideoAdManager;->callbackEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 29
    iget-object v0, p0, Lcom/openx/video/statemachine/Prepared;->sm:Lcom/openx/video/statemachine/StateMachine;

    iget-object v0, v0, Lcom/openx/video/statemachine/StateMachine;->enumPlaylistState:Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;->EndOfPlaylist:Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    if-ne v0, v1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/openx/video/statemachine/Prepared;->sm:Lcom/openx/video/statemachine/StateMachine;

    invoke-virtual {v0}, Lcom/openx/video/statemachine/StateMachine;->getVideoAdManager()Lcom/openx/model/video/VideoAdManager;

    move-result-object v0

    sget-object v1, Lcom/openx/model/video/VideoAdEvent$Event;->CONTENT_PLAYLIST_COMPLETE:Lcom/openx/model/video/VideoAdEvent$Event;

    invoke-virtual {v0, v1}, Lcom/openx/model/video/VideoAdManager;->callbackEvent(Lcom/openx/model/video/VideoAdEvent$Event;)V

    .line 32
    iget-object v0, p0, Lcom/openx/video/statemachine/Prepared;->sm:Lcom/openx/video/statemachine/StateMachine;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;->InPlaylist:Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    iput-object v1, v0, Lcom/openx/video/statemachine/StateMachine;->enumPlaylistState:Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    goto :goto_0
.end method
