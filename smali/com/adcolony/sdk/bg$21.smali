.class Lcom/adcolony/sdk/bg$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bg;->a(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Z

.field final synthetic c:Lcom/adcolony/sdk/bg;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bg;Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 1763
    iput-object p1, p0, Lcom/adcolony/sdk/bg$21;->c:Lcom/adcolony/sdk/bg;

    iput-object p2, p0, Lcom/adcolony/sdk/bg$21;->a:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/adcolony/sdk/bg$21;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1765
    iget-object v0, p0, Lcom/adcolony/sdk/bg$21;->c:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResume()"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1766
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 1767
    iget-object v0, p0, Lcom/adcolony/sdk/bg$21;->c:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aborting handle resume. OS is too old."

    invoke-static {v0, v1}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    :cond_0
    return-void

    .line 1770
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/bg$21;->c:Lcom/adcolony/sdk/bg;

    iget-object v1, p0, Lcom/adcolony/sdk/bg$21;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bg;->b(Landroid/app/Activity;)V

    .line 1771
    iget-object v0, p0, Lcom/adcolony/sdk/bg$21;->c:Lcom/adcolony/sdk/bg;

    iput-boolean v3, v0, Lcom/adcolony/sdk/bg;->w:Z

    .line 1772
    iget-object v0, p0, Lcom/adcolony/sdk/bg$21;->c:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->q:Lcom/adcolony/sdk/cn;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cn;->g()V

    .line 1774
    iget-object v0, p0, Lcom/adcolony/sdk/bg$21;->c:Lcom/adcolony/sdk/bg;

    new-instance v1, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;

    invoke-direct {v1}, Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;-><init>()V

    iput-object v1, v0, Lcom/adcolony/sdk/bg;->ak:Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;

    .line 1775
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1776
    iget-object v1, p0, Lcom/adcolony/sdk/bg$21;->c:Lcom/adcolony/sdk/bg;

    invoke-virtual {v1}, Lcom/adcolony/sdk/bg;->l()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/bg$21;->c:Lcom/adcolony/sdk/bg;

    iget-object v2, v2, Lcom/adcolony/sdk/bg;->ak:Lcom/adcolony/sdk/AdColonyPubServicesConReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1778
    iget-boolean v0, p0, Lcom/adcolony/sdk/bg$21;->b:Z

    if-eqz v0, :cond_2

    .line 1779
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1780
    const-string v1, "state"

    const-string v2, "FOREGROUND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    iget-object v1, p0, Lcom/adcolony/sdk/bg$21;->c:Lcom/adcolony/sdk/bg;

    const-string v2, "visibility_changed"

    invoke-virtual {v1, v2, v0}, Lcom/adcolony/sdk/bg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1785
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/bg$21;->c:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->t()Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;->SERVICE_AVAILABLE:Lcom/adcolony/sdk/AdColonyPubServices$ServiceAvailability;

    if-ne v0, v1, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/adcolony/sdk/bg$21;->c:Lcom/adcolony/sdk/bg;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResume trying to execute pending Notifications"

    invoke-static {v0, v1, v3}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1789
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/bg$21;->c:Lcom/adcolony/sdk/bg;

    iget-object v0, v0, Lcom/adcolony/sdk/bg;->k:Lcom/adcolony/sdk/ch;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ch;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
