.class public final Lcom/google/android/exoplayer2/text/d/a;
.super Lcom/google/android/exoplayer2/text/c;
.source "Tx3gDecoder.java"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "Tx3gDecoder"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/c;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/d/a;->a:Lcom/google/android/exoplayer2/util/l;

    .line 35
    return-void
.end method


# virtual methods
.method protected a([BI)Lcom/google/android/exoplayer2/text/e;
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/d/a;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/l;->a([BI)V

    .line 40
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/d/a;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->g()I

    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/google/android/exoplayer2/text/d/b;->a:Lcom/google/android/exoplayer2/text/d/b;

    .line 45
    :goto_0
    return-object v0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/d/a;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/l;->e(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    new-instance v0, Lcom/google/android/exoplayer2/text/d/b;

    new-instance v2, Lcom/google/android/exoplayer2/text/b;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/text/b;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/text/d/b;-><init>(Lcom/google/android/exoplayer2/text/b;)V

    goto :goto_0
.end method
