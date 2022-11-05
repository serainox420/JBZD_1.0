.class public final enum Lcom/smaato/soma/internal/statemachine/LoadingState$State;
.super Ljava/lang/Enum;
.source "LoadingState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/internal/statemachine/LoadingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smaato/soma/internal/statemachine/LoadingState$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum STATE_BANNERLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

.field public static final enum STATE_BLOCKED:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

.field public static final enum STATE_IDLE:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

.field public static final enum STATE_XMLLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

.field private static final synthetic a:[Lcom/smaato/soma/internal/statemachine/LoadingState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    const-string v1, "STATE_IDLE"

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/internal/statemachine/LoadingState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_IDLE:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    .line 39
    new-instance v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    const-string v1, "STATE_XMLLOADING"

    invoke-direct {v0, v1, v3}, Lcom/smaato/soma/internal/statemachine/LoadingState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_XMLLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    .line 43
    new-instance v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    const-string v1, "STATE_BLOCKED"

    invoke-direct {v0, v1, v4}, Lcom/smaato/soma/internal/statemachine/LoadingState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_BLOCKED:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    .line 47
    new-instance v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    const-string v1, "STATE_BANNERLOADING"

    invoke-direct {v0, v1, v5}, Lcom/smaato/soma/internal/statemachine/LoadingState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_BANNERLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_IDLE:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_XMLLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_BLOCKED:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->STATE_BANNERLOADING:Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->a:[Lcom/smaato/soma/internal/statemachine/LoadingState$State;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smaato/soma/internal/statemachine/LoadingState$State;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    return-object v0
.end method

.method public static values()[Lcom/smaato/soma/internal/statemachine/LoadingState$State;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$State;->a:[Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    invoke-virtual {v0}, [Lcom/smaato/soma/internal/statemachine/LoadingState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    return-object v0
.end method
