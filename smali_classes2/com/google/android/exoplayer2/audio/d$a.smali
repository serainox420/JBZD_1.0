.class public final Lcom/google/android/exoplayer2/audio/d$a;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/exoplayer2/audio/d;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/d;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->a:Landroid/os/Handler;

    .line 97
    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/d$a;->b:Lcom/google/android/exoplayer2/audio/d;

    .line 98
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/audio/d$a;)Lcom/google/android/exoplayer2/audio/d;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->b:Lcom/google/android/exoplayer2/audio/d;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->b:Lcom/google/android/exoplayer2/audio/d;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/audio/d$a$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/d$a$6;-><init>(Lcom/google/android/exoplayer2/audio/d$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    :cond_0
    return-void
.end method

.method public a(IJJ)V
    .locals 8

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->b:Lcom/google/android/exoplayer2/audio/d;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/audio/d$a$4;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/audio/d$a$4;-><init>(Lcom/google/android/exoplayer2/audio/d$a;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->b:Lcom/google/android/exoplayer2/audio/d;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/audio/d$a$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/d$a$3;-><init>(Lcom/google/android/exoplayer2/audio/d$a;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/a/d;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->b:Lcom/google/android/exoplayer2/audio/d;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/audio/d$a$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/d$a$1;-><init>(Lcom/google/android/exoplayer2/audio/d$a;Lcom/google/android/exoplayer2/a/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 8

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->b:Lcom/google/android/exoplayer2/audio/d;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/audio/d$a$2;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/audio/d$a$2;-><init>(Lcom/google/android/exoplayer2/audio/d$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/a/d;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->b:Lcom/google/android/exoplayer2/audio/d;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/d$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/audio/d$a$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/audio/d$a$5;-><init>(Lcom/google/android/exoplayer2/audio/d$a;Lcom/google/android/exoplayer2/a/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    :cond_0
    return-void
.end method
