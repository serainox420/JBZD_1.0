.class public abstract Lcom/mopub/mobileads/BaseBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseBroadcastReceiver.java"


# instance fields
.field private final a:J

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->a:J

    .line 20
    return-void
.end method

.method static a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 24
    const-string v0, "context cannot be null"

    invoke-static {p0, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    const-string v0, "action cannot be null"

    invoke-static {p3, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    const-string v1, "broadcastIdentifier"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/l;->a(Landroid/content/Context;)Landroid/support/v4/content/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/l;->a(Landroid/content/Intent;)Z

    .line 29
    return-void
.end method


# virtual methods
.method public abstract getIntentFilter()Landroid/content/IntentFilter;
.end method

.method public register(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 35
    iput-object p2, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->b:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/l;->a(Landroid/content/Context;)Landroid/support/v4/content/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/content/l;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 38
    return-void
.end method

.method public shouldConsumeBroadcast(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    .line 54
    const-string v0, "intent cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const-string v0, "broadcastIdentifier"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 56
    iget-wide v2, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->a:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregister(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/l;->a(Landroid/content/Context;)Landroid/support/v4/content/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/l;->a(Landroid/content/BroadcastReceiver;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->b:Landroid/content/Context;

    .line 45
    :cond_0
    return-void
.end method
