.class Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$2;->c:Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;

    iput-object p2, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$2;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 36
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$2;->c:Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;

    invoke-static {v0}, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;->a(Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$2;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$2;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$2;->a:Landroid/content/Intent;

    const-string v1, "noConnectivity"

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$2;->c:Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;

    invoke-static {v0}, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;->a(Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network connection lost."

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->I()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->u()V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$2;->b:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 50
    if-eqz v0, :cond_3

    .line 51
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 54
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$2;->c:Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;

    invoke-static {v0}, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;->a(Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network Connected"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->t()Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_CONNECTING:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    if-eq v0, v1, :cond_1

    .line 57
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->t()Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_AVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    if-eq v0, v1, :cond_1

    .line 59
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ao()Lcom/adcolony/sdk/by;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$2;->c:Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;

    .line 61
    invoke-static {v1}, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;->b(Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;)Lcom/adcolony/sdk/bv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;)V

    .line 62
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ao()Lcom/adcolony/sdk/by;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$2;->c:Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;

    .line 64
    invoke-static {v1}, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;->b(Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;)Lcom/adcolony/sdk/bv;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/adcolony/sdk/by;->b(Lcom/adcolony/sdk/bv;J)V

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$2;->c:Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;

    invoke-static {v0}, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;->a(Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No network detected"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver$2;->c:Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;

    invoke-static {v0}, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;->a(Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No network detected"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
