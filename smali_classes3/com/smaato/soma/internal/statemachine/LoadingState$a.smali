.class final enum Lcom/smaato/soma/internal/statemachine/LoadingState$a;
.super Ljava/lang/Enum;
.source "LoadingState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/internal/statemachine/LoadingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smaato/soma/internal/statemachine/LoadingState$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

.field public static final enum b:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

.field public static final enum c:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

.field public static final enum d:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

.field public static final enum e:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

.field public static final enum f:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

.field private static final synthetic g:[Lcom/smaato/soma/internal/statemachine/LoadingState$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    const-string v1, "TRANSITION_LOADXML"

    invoke-direct {v0, v1, v3}, Lcom/smaato/soma/internal/statemachine/LoadingState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->a:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    .line 61
    new-instance v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    const-string v1, "TRANSITION_LOADBANNER"

    invoke-direct {v0, v1, v4}, Lcom/smaato/soma/internal/statemachine/LoadingState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->b:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    .line 65
    new-instance v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    const-string v1, "TRANSITION_BLOCKLOADING"

    invoke-direct {v0, v1, v5}, Lcom/smaato/soma/internal/statemachine/LoadingState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->c:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    .line 69
    new-instance v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    const-string v1, "TRANSITION_UNBLOCKLOADING"

    invoke-direct {v0, v1, v6}, Lcom/smaato/soma/internal/statemachine/LoadingState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->d:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    .line 73
    new-instance v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    const-string v1, "TRANSITION_FINISHLOADING"

    invoke-direct {v0, v1, v7}, Lcom/smaato/soma/internal/statemachine/LoadingState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->e:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    .line 77
    new-instance v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    const-string v1, "TRANSITION_ERRORLOADING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/internal/statemachine/LoadingState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->f:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->a:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->b:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->c:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->d:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->e:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->f:Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->g:[Lcom/smaato/soma/internal/statemachine/LoadingState$a;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smaato/soma/internal/statemachine/LoadingState$a;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    return-object v0
.end method

.method public static values()[Lcom/smaato/soma/internal/statemachine/LoadingState$a;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/smaato/soma/internal/statemachine/LoadingState$a;->g:[Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    invoke-virtual {v0}, [Lcom/smaato/soma/internal/statemachine/LoadingState$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smaato/soma/internal/statemachine/LoadingState$a;

    return-object v0
.end method
