.class public Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Lcom/adcolony/sdk/bv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 11
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$1;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$1;-><init>(Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;)V

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;->a:Lcom/adcolony/sdk/bv;

    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;)Lcom/adcolony/sdk/bv;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;->a:Lcom/adcolony/sdk/bv;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 3

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "New connection was called"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$3;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    iget-object v1, v1, Lcom/adcolony/sdk/bz;->u:Lcom/adcolony/sdk/bq;

    invoke-direct {v0, p0, v1}, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$3;-><init>(Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;Lcom/adcolony/sdk/bq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/adcolony/sdk/bu;

    invoke-direct {v0}, Lcom/adcolony/sdk/bu;-><init>()V

    .line 33
    new-instance v1, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$2;-><init>(Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 77
    return-void
.end method
