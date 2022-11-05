.class final Lcom/google/android/exoplayer2/audio/c$a;
.super Landroid/content/BroadcastReceiver;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/audio/c;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/c;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c$a;->a:Lcom/google/android/exoplayer2/audio/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/c;Lcom/google/android/exoplayer2/audio/c$1;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/c$a;-><init>(Lcom/google/android/exoplayer2/audio/c;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/c$a;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-static {p2}, Lcom/google/android/exoplayer2/audio/b;->a(Landroid/content/Intent;)Lcom/google/android/exoplayer2/audio/b;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c$a;->a:Lcom/google/android/exoplayer2/audio/c;

    iget-object v1, v1, Lcom/google/android/exoplayer2/audio/c;->a:Lcom/google/android/exoplayer2/audio/b;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c$a;->a:Lcom/google/android/exoplayer2/audio/c;

    iput-object v0, v1, Lcom/google/android/exoplayer2/audio/c;->a:Lcom/google/android/exoplayer2/audio/b;

    .line 95
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/c$a;->a:Lcom/google/android/exoplayer2/audio/c;

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/c;->a(Lcom/google/android/exoplayer2/audio/c;)Lcom/google/android/exoplayer2/audio/c$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/audio/c$b;->a(Lcom/google/android/exoplayer2/audio/b;)V

    .line 98
    :cond_0
    return-void
.end method
