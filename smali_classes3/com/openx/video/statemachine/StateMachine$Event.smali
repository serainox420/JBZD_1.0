.class final enum Lcom/openx/video/statemachine/StateMachine$Event;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/video/statemachine/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/video/statemachine/StateMachine$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/video/statemachine/StateMachine$Event;

.field public static final enum none:Lcom/openx/video/statemachine/StateMachine$Event;

.field public static final enum pause:Lcom/openx/video/statemachine/StateMachine$Event;

.field public static final enum play:Lcom/openx/video/statemachine/StateMachine$Event;

.field public static final enum touch:Lcom/openx/video/statemachine/StateMachine$Event;

.field public static final enum windowFocusChange:Lcom/openx/video/statemachine/StateMachine$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/openx/video/statemachine/StateMachine$Event;

    const-string v1, "none"

    invoke-direct {v0, v1, v2}, Lcom/openx/video/statemachine/StateMachine$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    .line 63
    new-instance v0, Lcom/openx/video/statemachine/StateMachine$Event;

    const-string v1, "pause"

    invoke-direct {v0, v1, v3}, Lcom/openx/video/statemachine/StateMachine$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$Event;->pause:Lcom/openx/video/statemachine/StateMachine$Event;

    .line 64
    new-instance v0, Lcom/openx/video/statemachine/StateMachine$Event;

    const-string v1, "play"

    invoke-direct {v0, v1, v4}, Lcom/openx/video/statemachine/StateMachine$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$Event;->play:Lcom/openx/video/statemachine/StateMachine$Event;

    .line 65
    new-instance v0, Lcom/openx/video/statemachine/StateMachine$Event;

    const-string v1, "touch"

    invoke-direct {v0, v1, v5}, Lcom/openx/video/statemachine/StateMachine$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$Event;->touch:Lcom/openx/video/statemachine/StateMachine$Event;

    .line 66
    new-instance v0, Lcom/openx/video/statemachine/StateMachine$Event;

    const-string v1, "windowFocusChange"

    invoke-direct {v0, v1, v6}, Lcom/openx/video/statemachine/StateMachine$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$Event;->windowFocusChange:Lcom/openx/video/statemachine/StateMachine$Event;

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/openx/video/statemachine/StateMachine$Event;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->pause:Lcom/openx/video/statemachine/StateMachine$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->play:Lcom/openx/video/statemachine/StateMachine$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->touch:Lcom/openx/video/statemachine/StateMachine$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->windowFocusChange:Lcom/openx/video/statemachine/StateMachine$Event;

    aput-object v1, v0, v6

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$Event;->$VALUES:[Lcom/openx/video/statemachine/StateMachine$Event;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/video/statemachine/StateMachine$Event;
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/video/statemachine/StateMachine$Event;

    return-object v0
.end method

.method public static values()[Lcom/openx/video/statemachine/StateMachine$Event;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/openx/video/statemachine/StateMachine$Event;->$VALUES:[Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v0}, [Lcom/openx/video/statemachine/StateMachine$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/video/statemachine/StateMachine$Event;

    return-object v0
.end method
