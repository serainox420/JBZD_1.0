.class public final Lcom/google/android/exoplayer2/audio/c;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/c$a;,
        Lcom/google/android/exoplayer2/audio/c$b;
    }
.end annotation


# instance fields
.field a:Lcom/google/android/exoplayer2/audio/b;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/exoplayer2/audio/c$b;

.field private final d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/audio/c$b;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->b:Landroid/content/Context;

    .line 58
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/c$b;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->c:Lcom/google/android/exoplayer2/audio/c$b;

    .line 59
    sget v0, Lcom/google/android/exoplayer2/util/v;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/audio/c$a;

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/audio/c$a;-><init>(Lcom/google/android/exoplayer2/audio/c;Lcom/google/android/exoplayer2/audio/c$1;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->d:Landroid/content/BroadcastReceiver;

    .line 60
    return-void

    :cond_0
    move-object v0, v1

    .line 59
    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/audio/c;)Lcom/google/android/exoplayer2/audio/c$b;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->c:Lcom/google/android/exoplayer2/audio/c$b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/audio/b;
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 73
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/b;->a(Landroid/content/Intent;)Lcom/google/android/exoplayer2/audio/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->a:Lcom/google/android/exoplayer2/audio/b;

    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->a:Lcom/google/android/exoplayer2/audio/b;

    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    :cond_0
    return-void
.end method
