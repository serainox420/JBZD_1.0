.class public final enum Lcom/smaato/soma/debug/DebugCategory;
.super Ljava/lang/Enum;
.source "DebugCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smaato/soma/debug/DebugCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/smaato/soma/debug/DebugCategory;

.field public static final enum ERROR:Lcom/smaato/soma/debug/DebugCategory;

.field public static final enum EXCEPTION:Lcom/smaato/soma/debug/DebugCategory;

.field public static final enum INFO:Lcom/smaato/soma/debug/DebugCategory;

.field public static final enum VERVOSE:Lcom/smaato/soma/debug/DebugCategory;

.field public static final enum WARNING:Lcom/smaato/soma/debug/DebugCategory;

.field private static final synthetic a:[Lcom/smaato/soma/debug/DebugCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/smaato/soma/debug/DebugCategory;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v3}, Lcom/smaato/soma/debug/DebugCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    .line 19
    new-instance v0, Lcom/smaato/soma/debug/DebugCategory;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/smaato/soma/debug/DebugCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    .line 23
    new-instance v0, Lcom/smaato/soma/debug/DebugCategory;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v5}, Lcom/smaato/soma/debug/DebugCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/debug/DebugCategory;->INFO:Lcom/smaato/soma/debug/DebugCategory;

    .line 27
    new-instance v0, Lcom/smaato/soma/debug/DebugCategory;

    const-string v1, "VERVOSE"

    invoke-direct {v0, v1, v6}, Lcom/smaato/soma/debug/DebugCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/debug/DebugCategory;->VERVOSE:Lcom/smaato/soma/debug/DebugCategory;

    .line 31
    new-instance v0, Lcom/smaato/soma/debug/DebugCategory;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v7}, Lcom/smaato/soma/debug/DebugCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    .line 35
    new-instance v0, Lcom/smaato/soma/debug/DebugCategory;

    const-string v1, "EXCEPTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smaato/soma/debug/DebugCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smaato/soma/debug/DebugCategory;->EXCEPTION:Lcom/smaato/soma/debug/DebugCategory;

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/smaato/soma/debug/DebugCategory;

    sget-object v1, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/smaato/soma/debug/DebugCategory;->ERROR:Lcom/smaato/soma/debug/DebugCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/smaato/soma/debug/DebugCategory;->INFO:Lcom/smaato/soma/debug/DebugCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/smaato/soma/debug/DebugCategory;->VERVOSE:Lcom/smaato/soma/debug/DebugCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/smaato/soma/debug/DebugCategory;->WARNING:Lcom/smaato/soma/debug/DebugCategory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/smaato/soma/debug/DebugCategory;->EXCEPTION:Lcom/smaato/soma/debug/DebugCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/smaato/soma/debug/DebugCategory;->a:[Lcom/smaato/soma/debug/DebugCategory;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smaato/soma/debug/DebugCategory;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/smaato/soma/debug/DebugCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/debug/DebugCategory;

    return-object v0
.end method

.method public static values()[Lcom/smaato/soma/debug/DebugCategory;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/smaato/soma/debug/DebugCategory;->a:[Lcom/smaato/soma/debug/DebugCategory;

    invoke-virtual {v0}, [Lcom/smaato/soma/debug/DebugCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smaato/soma/debug/DebugCategory;

    return-object v0
.end method
