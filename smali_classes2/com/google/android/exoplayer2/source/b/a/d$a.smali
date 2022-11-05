.class Lcom/google/android/exoplayer2/source/b/a/d$a;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/io/BufferedReader;

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/BufferedReader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/a/d$a;->b:Ljava/util/Queue;

    .line 422
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/b/a/d$a;->a:Ljava/io/BufferedReader;

    .line 423
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/d$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    .line 439
    :goto_0
    return v0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/d$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/d$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/d$a;->c:Ljava/lang/String;

    move v0, v1

    .line 431
    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/d$a;->a:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/d$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/d$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/d$a;->c:Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/d$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 436
    goto :goto_0

    .line 439
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 443
    .line 444
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/b/a/d$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/d$a;->c:Ljava/lang/String;

    .line 446
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/b/a/d$a;->c:Ljava/lang/String;

    .line 448
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
