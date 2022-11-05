.class public Lcom/pubmatic/sdk/common/PMLogger;
.super Ljava/lang/Object;
.source "PMLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/PMLogger$LogListener;,
        Lcom/pubmatic/sdk/common/PMLogger$LogLevel;
    }
.end annotation


# static fields
.field private static logLevel:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->Error:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    sput-object v0, Lcom/pubmatic/sdk/common/PMLogger;->logLevel:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static logEvent(Ljava/lang/String;Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/pubmatic/sdk/common/PMLogger;->logLevel:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/pubmatic/sdk/common/PMLogger$1;->$SwitchMap$com$pubmatic$sdk$common$PMLogger$LogLevel:[I

    invoke-virtual {p1}, Lcom/pubmatic/sdk/common/PMLogger$LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 61
    :pswitch_0
    const-string v0, "PubMatic SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :pswitch_1
    const-string v0, "PubMatic SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setLogLevel(Lcom/pubmatic/sdk/common/PMLogger$LogLevel;)V
    .locals 0

    .prologue
    .line 40
    sput-object p0, Lcom/pubmatic/sdk/common/PMLogger;->logLevel:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    .line 41
    return-void
.end method


# virtual methods
.method public getLogLevel()Lcom/pubmatic/sdk/common/PMLogger$LogLevel;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/pubmatic/sdk/common/PMLogger;->logLevel:Lcom/pubmatic/sdk/common/PMLogger$LogLevel;

    return-object v0
.end method
