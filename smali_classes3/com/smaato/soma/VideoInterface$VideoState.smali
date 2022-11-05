.class public final enum Lcom/smaato/soma/VideoInterface$VideoState;
.super Ljava/lang/Enum;
.source "VideoInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/VideoInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smaato/soma/VideoInterface$VideoState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EMPTY:Lcom/smaato/soma/VideoInterface$VideoState;

.field public static final enum FINISHED:Lcom/smaato/soma/VideoInterface$VideoState;

.field public static final enum PAUSED:Lcom/smaato/soma/VideoInterface$VideoState;

.field public static final enum RUNNING:Lcom/smaato/soma/VideoInterface$VideoState;

.field public static final enum STOPPED:Lcom/smaato/soma/VideoInterface$VideoState;

.field private static final synthetic a:[Lcom/smaato/soma/VideoInterface$VideoState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/smaato/soma/VideoInterface$VideoState;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/VideoInterface$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/VideoInterface$VideoState;->EMPTY:Lcom/smaato/soma/VideoInterface$VideoState;

    .line 21
    new-instance v0, Lcom/smaato/soma/VideoInterface$VideoState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/smaato/soma/VideoInterface$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/VideoInterface$VideoState;->STOPPED:Lcom/smaato/soma/VideoInterface$VideoState;

    .line 25
    new-instance v0, Lcom/smaato/soma/VideoInterface$VideoState;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/smaato/soma/VideoInterface$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/VideoInterface$VideoState;->FINISHED:Lcom/smaato/soma/VideoInterface$VideoState;

    .line 29
    new-instance v0, Lcom/smaato/soma/VideoInterface$VideoState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v5}, Lcom/smaato/soma/VideoInterface$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/VideoInterface$VideoState;->PAUSED:Lcom/smaato/soma/VideoInterface$VideoState;

    .line 33
    new-instance v0, Lcom/smaato/soma/VideoInterface$VideoState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v6}, Lcom/smaato/soma/VideoInterface$VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/VideoInterface$VideoState;->RUNNING:Lcom/smaato/soma/VideoInterface$VideoState;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/smaato/soma/VideoInterface$VideoState;

    sget-object v1, Lcom/smaato/soma/VideoInterface$VideoState;->EMPTY:Lcom/smaato/soma/VideoInterface$VideoState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smaato/soma/VideoInterface$VideoState;->STOPPED:Lcom/smaato/soma/VideoInterface$VideoState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smaato/soma/VideoInterface$VideoState;->FINISHED:Lcom/smaato/soma/VideoInterface$VideoState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smaato/soma/VideoInterface$VideoState;->PAUSED:Lcom/smaato/soma/VideoInterface$VideoState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smaato/soma/VideoInterface$VideoState;->RUNNING:Lcom/smaato/soma/VideoInterface$VideoState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/smaato/soma/VideoInterface$VideoState;->a:[Lcom/smaato/soma/VideoInterface$VideoState;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smaato/soma/VideoInterface$VideoState;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/smaato/soma/VideoInterface$VideoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/VideoInterface$VideoState;

    return-object v0
.end method

.method public static values()[Lcom/smaato/soma/VideoInterface$VideoState;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/smaato/soma/VideoInterface$VideoState;->a:[Lcom/smaato/soma/VideoInterface$VideoState;

    invoke-virtual {v0}, [Lcom/smaato/soma/VideoInterface$VideoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smaato/soma/VideoInterface$VideoState;

    return-object v0
.end method
