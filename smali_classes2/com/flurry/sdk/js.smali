.class public Lcom/flurry/sdk/js;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/sdk/js;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/flurry/sdk/js;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/js;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/js;
    .locals 2

    .prologue
    .line 12
    const-class v1, Lcom/flurry/sdk/js;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/js;->a:Lcom/flurry/sdk/js;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/flurry/sdk/js;

    invoke-direct {v0}, Lcom/flurry/sdk/js;-><init>()V

    sput-object v0, Lcom/flurry/sdk/js;->a:Lcom/flurry/sdk/js;

    .line 15
    :cond_0
    sget-object v0, Lcom/flurry/sdk/js;->a:Lcom/flurry/sdk/js;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    .line 1097
    iget-object v0, v0, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 29
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 30
    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    .line 2097
    iget-object v0, v0, Lcom/flurry/sdk/jy;->a:Landroid/content/Context;

    .line 39
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 40
    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
