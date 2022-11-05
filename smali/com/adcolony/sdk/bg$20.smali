.class Lcom/adcolony/sdk/bg$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->c(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1742
    iput-object p1, p0, Lcom/adcolony/sdk/bg$20;->b:Lcom/adcolony/sdk/bg;

    iput-object p2, p0, Lcom/adcolony/sdk/bg$20;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1745
    iget-object v0, p0, Lcom/adcolony/sdk/bg$20;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPause()"

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1746
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/adcolony/sdk/bg$20;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aborting handle pause. OS is too old."

    invoke-static {v0, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    :goto_0
    return-void

    .line 1751
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$20;->b:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$20;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/cn;->a(Landroid/app/Activity;)V

    .line 1754
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$20;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/bg$20;->b:Lcom/adcolony/sdk/bg;

    iget-object v1, v1, Lcom/adcolony/sdk/bg;->ak:Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1755
    :catch_0
    move-exception v0

    .line 1756
    iget-object v0, p0, Lcom/adcolony/sdk/bg$20;->b:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conReceive receiver not registered"

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
