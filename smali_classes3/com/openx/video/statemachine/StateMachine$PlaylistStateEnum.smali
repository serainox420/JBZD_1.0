.class final enum Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/video/statemachine/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PlaylistStateEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

.field public static final enum EndOfPlaylist:Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

.field public static final enum InPlaylist:Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

.field public static final enum NotAPlaylist:Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    const-string v1, "NotAPlaylist"

    invoke-direct {v0, v1, v2}, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;->NotAPlaylist:Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    .line 101
    new-instance v0, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    const-string v1, "InPlaylist"

    invoke-direct {v0, v1, v3}, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;->InPlaylist:Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    .line 102
    new-instance v0, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    const-string v1, "EndOfPlaylist"

    invoke-direct {v0, v1, v4}, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;->EndOfPlaylist:Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;->NotAPlaylist:Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;->InPlaylist:Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;->EndOfPlaylist:Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;->$VALUES:[Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

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
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;
    .locals 1

    .prologue
    .line 98
    const-class v0, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    return-object v0
.end method

.method public static values()[Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;->$VALUES:[Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    invoke-virtual {v0}, [Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/video/statemachine/StateMachine$PlaylistStateEnum;

    return-object v0
.end method
