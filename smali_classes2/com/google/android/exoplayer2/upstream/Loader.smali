.class public final Lcom/google/android/exoplayer2/upstream/Loader;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/Loader$b;,
        Lcom/google/android/exoplayer2/upstream/Loader$a;,
        Lcom/google/android/exoplayer2/upstream/Loader$c;,
        Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/google/android/exoplayer2/upstream/Loader$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/Loader$b",
            "<+",
            "Lcom/google/android/exoplayer2/upstream/Loader$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->a:Ljava/util/concurrent/ExecutorService;

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->b:Lcom/google/android/exoplayer2/upstream/Loader$b;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$b;)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->b:Lcom/google/android/exoplayer2/upstream/Loader$b;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->c:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/upstream/Loader;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/Loader$c;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer2/upstream/Loader$c;",
            ">(TT;",
            "Lcom/google/android/exoplayer2/upstream/Loader$a",
            "<TT;>;I)J"
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 162
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 164
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/Loader$b;-><init>(Lcom/google/android/exoplayer2/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/Loader$c;Lcom/google/android/exoplayer2/upstream/Loader$a;IJ)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/Loader$b;->a(J)V

    .line 165
    return-wide v6

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->c:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->c:Ljava/io/IOException;

    throw v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->b:Lcom/google/android/exoplayer2/upstream/Loader$b;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->b:Lcom/google/android/exoplayer2/upstream/Loader$b;

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->b:Lcom/google/android/exoplayer2/upstream/Loader$b;

    iget p1, v1, Lcom/google/android/exoplayer2/upstream/Loader$b;->a:I

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/Loader$b;->a(I)V

    .line 222
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->b:Lcom/google/android/exoplayer2/upstream/Loader$b;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->b:Lcom/google/android/exoplayer2/upstream/Loader$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$b;->a(Z)V

    .line 201
    :cond_0
    if-eqz p1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 205
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->b:Lcom/google/android/exoplayer2/upstream/Loader$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->b:Lcom/google/android/exoplayer2/upstream/Loader$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$b;->a(Z)V

    .line 180
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a(I)V

    .line 212
    return-void
.end method
