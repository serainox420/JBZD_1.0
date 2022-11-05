.class Lcom/google/android/exoplayer2/f$1;
.super Landroid/os/Handler;
.source "ExoPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/f;-><init>([Lcom/google/android/exoplayer2/j;Lcom/google/android/exoplayer2/b/h;Lcom/google/android/exoplayer2/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/f;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/f;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/exoplayer2/f$1;->a:Lcom/google/android/exoplayer2/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/f$1;->a:Lcom/google/android/exoplayer2/f;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/f;->a(Landroid/os/Message;)V

    .line 94
    return-void
.end method
