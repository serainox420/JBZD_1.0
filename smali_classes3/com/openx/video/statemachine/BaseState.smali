.class public Lcom/openx/video/statemachine/BaseState;
.super Ljava/lang/Object;
.source "BaseState.java"

# interfaces
.implements Lcom/openx/video/statemachine/State;


# instance fields
.field public sm:Lcom/openx/video/statemachine/StateMachine;


# direct methods
.method public constructor <init>(Lcom/openx/video/statemachine/StateMachine;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/openx/video/statemachine/BaseState;->sm:Lcom/openx/video/statemachine/StateMachine;

    .line 12
    return-void
.end method


# virtual methods
.method public entry()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public process(Lcom/openx/video/statemachine/StateMachine$Event;)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method
