.class public final enum Lcom/pubmatic/sdk/common/PMLogger$LogLevel;
.super Ljava/lang/Enum;
.source "PMLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/PMLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pubmatic/sdk/common/PMLogger$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

.field public static final enum Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

.field public static final enum Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

.field public static final enum None:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->None:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    new-instance v0, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    const-string v1, "Error"

    invoke-direct {v0, v1, v3}, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    new-instance v0, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    const-string v1, "Debug"

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->None:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Debug:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->$VALUES:[Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/PMLogger$LogLevel;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/PMLogger$LogLevel;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->$VALUES:[Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    return-object v0
.end method
