.class public final enum Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/AdColonyPubServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LOG_LEVEL_DEBUG:Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

.field public static final enum LOG_LEVEL_ERROR:Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

.field public static final enum LOG_LEVEL_INFO:Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

.field public static final enum LOG_LEVEL_VERBOSE:Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

.field public static final enum LOG_LEVEL_WARN:Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

.field private static final synthetic a:[Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    const-string v1, "LOG_LEVEL_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;->LOG_LEVEL_ERROR:Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    .line 43
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    const-string v1, "LOG_LEVEL_WARN"

    invoke-direct {v0, v1, v3}, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;->LOG_LEVEL_WARN:Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    .line 44
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    const-string v1, "LOG_LEVEL_INFO"

    invoke-direct {v0, v1, v4}, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;->LOG_LEVEL_INFO:Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    .line 45
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    const-string v1, "LOG_LEVEL_DEBUG"

    invoke-direct {v0, v1, v5}, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;->LOG_LEVEL_DEBUG:Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    .line 46
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    const-string v1, "LOG_LEVEL_VERBOSE"

    invoke-direct {v0, v1, v6}, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;->LOG_LEVEL_VERBOSE:Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;->LOG_LEVEL_ERROR:Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;->LOG_LEVEL_WARN:Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;->LOG_LEVEL_INFO:Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;->LOG_LEVEL_DEBUG:Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;->LOG_LEVEL_VERBOSE:Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;->a:[Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;->a:[Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    invoke-virtual {v0}, [Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adcolony/sdk/AdColonyPubServices$LogLevel;

    return-object v0
.end method
