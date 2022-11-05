.class synthetic Lcom/openx/video/statemachine/ContentPlaying$1;
.super Ljava/lang/Object;
.source "ContentPlaying.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/video/statemachine/ContentPlaying;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$openx$video$statemachine$StateMachine$Event:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    invoke-static {}, Lcom/openx/video/statemachine/StateMachine$Event;->values()[Lcom/openx/video/statemachine/StateMachine$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/openx/video/statemachine/ContentPlaying$1;->$SwitchMap$com$openx$video$statemachine$StateMachine$Event:[I

    :try_start_0
    sget-object v0, Lcom/openx/video/statemachine/ContentPlaying$1;->$SwitchMap$com$openx$video$statemachine$StateMachine$Event:[I

    sget-object v1, Lcom/openx/video/statemachine/StateMachine$Event;->none:Lcom/openx/video/statemachine/StateMachine$Event;

    invoke-virtual {v1}, Lcom/openx/video/statemachine/StateMachine$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
