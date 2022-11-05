.class public abstract Lcom/google/android/exoplayer2/text/c;
.super Lcom/google/android/exoplayer2/a/g;
.source "SimpleSubtitleDecoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/a/g",
        "<",
        "Lcom/google/android/exoplayer2/text/h;",
        "Lcom/google/android/exoplayer2/text/i;",
        "Lcom/google/android/exoplayer2/text/SubtitleDecoderException;",
        ">;",
        "Lcom/google/android/exoplayer2/text/f;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 35
    new-array v0, v1, [Lcom/google/android/exoplayer2/text/h;

    new-array v1, v1, [Lcom/google/android/exoplayer2/text/i;

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/a/g;-><init>([Lcom/google/android/exoplayer2/a/e;[Lcom/google/android/exoplayer2/a/f;)V

    .line 36
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/c;->a:Ljava/lang/String;

    .line 37
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/c;->a(I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/exoplayer2/text/h;Lcom/google/android/exoplayer2/text/i;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .locals 6

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/h;->b:Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/text/c;->a([BI)Lcom/google/android/exoplayer2/text/e;

    move-result-object v3

    .line 71
    iget-wide v1, p1, Lcom/google/android/exoplayer2/text/h;->c:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/text/h;->d:J

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/i;->a(JLcom/google/android/exoplayer2/text/e;J)V

    .line 73
    const/high16 v0, -0x80000000

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/text/i;->c(I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected abstract a([BI)Lcom/google/android/exoplayer2/text/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation
.end method

.method protected bridge synthetic a(Lcom/google/android/exoplayer2/a/e;Lcom/google/android/exoplayer2/a/f;Z)Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/google/android/exoplayer2/text/h;

    check-cast p2, Lcom/google/android/exoplayer2/text/i;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/text/c;->a(Lcom/google/android/exoplayer2/text/h;Lcom/google/android/exoplayer2/text/i;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method protected bridge synthetic a(Lcom/google/android/exoplayer2/a/f;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/google/android/exoplayer2/text/i;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/c;->a(Lcom/google/android/exoplayer2/text/i;)V

    return-void
.end method

.method protected final a(Lcom/google/android/exoplayer2/text/i;)V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/a/g;->a(Lcom/google/android/exoplayer2/a/f;)V

    .line 63
    return-void
.end method

.method protected synthetic g()Lcom/google/android/exoplayer2/a/e;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/c;->i()Lcom/google/android/exoplayer2/text/h;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic h()Lcom/google/android/exoplayer2/a/f;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/c;->j()Lcom/google/android/exoplayer2/text/i;

    move-result-object v0

    return-object v0
.end method

.method protected final i()Lcom/google/android/exoplayer2/text/h;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/exoplayer2/text/h;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/h;-><init>()V

    return-object v0
.end method

.method protected final j()Lcom/google/android/exoplayer2/text/i;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/google/android/exoplayer2/text/d;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/text/d;-><init>(Lcom/google/android/exoplayer2/text/c;)V

    return-object v0
.end method
