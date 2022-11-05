.class Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$3;
.super Lcom/adcolony/sdk/bp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;Lcom/adcolony/sdk/bq;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$3;->a:Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;

    invoke-direct {p0, p2}, Lcom/adcolony/sdk/bp;-><init>(Lcom/adcolony/sdk/bq;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->t()Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_CONNECTING:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    if-eq v0, v1, :cond_0

    .line 87
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->t()Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_AVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    if-eq v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$3;->a:Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;

    invoke-static {v0}, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;->a(Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "New Connection was executed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 90
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    const-string v1, "InternetAvailable"

    .line 91
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bz;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
