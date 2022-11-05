.class public Lcom/openx/video/statemachine/NotAPlaylist;
.super Lcom/openx/video/statemachine/BaseState;
.source "NotAPlaylist.java"

# interfaces
.implements Lcom/openx/video/statemachine/State;


# direct methods
.method public constructor <init>(Lcom/openx/video/statemachine/StateMachine;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/openx/video/statemachine/BaseState;-><init>(Lcom/openx/video/statemachine/StateMachine;)V

    .line 13
    return-void
.end method


# virtual methods
.method public entry()V
    .locals 3

    .prologue
    .line 34
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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/openx/video/statemachine/NotAPlaylist;->sm:Lcom/openx/video/statemachine/StateMachine;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;->NotAPlaylist:Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    iput-object v1, v0, Lcom/openx/video/statemachine/StateMachine;->enumPlaylistState:Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    .line 37
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public process(Lcom/openx/video/statemachine/StateMachine$Event;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
