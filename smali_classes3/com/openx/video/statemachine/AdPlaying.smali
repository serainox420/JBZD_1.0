.class public Lcom/openx/video/statemachine/AdPlaying;
.super Lcom/openx/video/statemachine/BaseState;
.source "AdPlaying.java"

# interfaces
.implements Lcom/openx/video/statemachine/State;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/video/statemachine/AdPlaying$1;
    }
.end annotation


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
    .locals 2

    .prologue
    .line 35
    const-string v0, "STATE_MACHINE"

    const-string v1, "[[[ STATE MACHINE ]]]  AdPlaying Entry "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/openx/video/statemachine/AdPlaying;->sm:Lcom/openx/video/statemachine/StateMachine;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$AdStateEnum;->AdPlaying:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    iput-object v1, v0, Lcom/openx/video/statemachine/StateMachine;->enumAdState:Lcom/openx/video/statemachine/StateMachine$AdStateEnum;

    .line 38
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "STATE_MACHINE"

    const-string v1, "[[[ STATE MACHINE ]]]  AdPlaying Exit "

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public process(Lcom/openx/video/statemachine/StateMachine$Event;)V
    .locals 2

    .prologue
    .line 18
    const-string v0, "STATE_MACHINE"

    const-string v1, "[[[ STATE MACHINE ]]]  AdPlaying process..."

    invoke-static {v0, v1}, Lcom/openx/common/utils/logger/OXLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/openx/video/statemachine/AdPlaying$1;->$SwitchMap$com$openx$video$statemachine$StateMachine$Event:[I

    invoke-virtual {p1}, Lcom/openx/video/statemachine/StateMachine$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 30
    return-void
.end method
