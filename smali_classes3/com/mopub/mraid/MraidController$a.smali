.class Lcom/mopub/mraid/MraidController$a;
.super Landroid/content/BroadcastReceiver;
.source "MraidController.java"


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mraid/MraidController;

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method constructor <init>(Lcom/mopub/mraid/MraidController;)V
    .locals 1

    .prologue
    .line 982
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$a;->a:Lcom/mopub/mraid/MraidController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 986
    const/4 v0, -0x1

    iput v0, p0, Lcom/mopub/mraid/MraidController$a;->c:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 990
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$a;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$a;->a:Lcom/mopub/mraid/MraidController;

    invoke-static {v0}, Lcom/mopub/mraid/MraidController;->l(Lcom/mopub/mraid/MraidController;)I

    move-result v0

    .line 997
    iget v1, p0, Lcom/mopub/mraid/MraidController$a;->c:I

    if-eq v0, v1, :cond_0

    .line 998
    iput v0, p0, Lcom/mopub/mraid/MraidController$a;->c:I

    .line 999
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$a;->a:Lcom/mopub/mraid/MraidController;

    iget v1, p0, Lcom/mopub/mraid/MraidController$a;->c:I

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->a(I)V

    goto :goto_0
.end method

.method public register(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1005
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 1006
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController$a;->b:Landroid/content/Context;

    .line 1007
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$a;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1011
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$a;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1016
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController$a;->b:Landroid/content/Context;

    .line 1018
    :cond_0
    return-void
.end method
