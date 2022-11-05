.class final enum Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/video/statemachine/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ExpandedStateEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;

.field public static final enum Collapsed:Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;

.field public static final enum Expanded:Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;

    const-string v1, "Collapsed"

    invoke-direct {v0, v1, v2}, Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;->Collapsed:Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;

    .line 107
    new-instance v0, Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;

    const-string v1, "Expanded"

    invoke-direct {v0, v1, v3}, Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;->Expanded:Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;

    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;->Collapsed:Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;->Expanded:Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;->$VALUES:[Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;

    return-object v0
.end method

.method public static values()[Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;->$VALUES:[Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;

    invoke-virtual {v0}, [Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/video/statemachine/StateMachine$ExpandedStateEnum;

    return-object v0
.end method
