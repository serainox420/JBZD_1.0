.class final enum Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/video/statemachine/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VideoStateEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

.field public static final enum Completed:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

.field public static final enum None:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

.field public static final enum Paused:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

.field public static final enum Started:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->None:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    .line 72
    new-instance v0, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    const-string v1, "Started"

    invoke-direct {v0, v1, v3}, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->Started:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    .line 73
    new-instance v0, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    const-string v1, "Paused"

    invoke-direct {v0, v1, v4}, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->Paused:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    .line 74
    new-instance v0, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    const-string v1, "Completed"

    invoke-direct {v0, v1, v5}, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->Completed:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->None:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->Started:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->Paused:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->Completed:Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->$VALUES:[Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    return-object v0
.end method

.method public static values()[Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->$VALUES:[Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    invoke-virtual {v0}, [Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/video/statemachine/StateMachine$VideoStateEnum;

    return-object v0
.end method
