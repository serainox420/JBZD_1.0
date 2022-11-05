.class final enum Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/video/statemachine/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MutedStateEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

.field public static final enum Muted:Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

.field public static final enum Unmuted:Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    new-instance v0, Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

    const-string v1, "Muted"

    invoke-direct {v0, v1, v2}, Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;->Muted:Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

    .line 112
    new-instance v0, Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

    const-string v1, "Unmuted"

    invoke-direct {v0, v1, v3}, Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;->Unmuted:Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;->Muted:Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;->Unmuted:Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;->$VALUES:[Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;
    .locals 1

    .prologue
    .line 109
    const-class v0, Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

    return-object v0
.end method

.method public static values()[Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;->$VALUES:[Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

    invoke-virtual {v0}, [Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/video/statemachine/StateMachine$MutedStateEnum;

    return-object v0
.end method
