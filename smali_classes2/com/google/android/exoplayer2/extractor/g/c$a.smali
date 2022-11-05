.class final Lcom/google/android/exoplayer2/extractor/g/c$a;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/g/c$a;->a:I

    .line 164
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/g/c$a;->b:J

    .line 165
    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/extractor/g/c$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/16 v1, 0x8

    invoke-interface {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/g;->c([BII)V

    .line 179
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 181
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 182
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->l()J

    move-result-wide v2

    .line 184
    new-instance v1, Lcom/google/android/exoplayer2/extractor/g/c$a;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/g/c$a;-><init>(IJ)V

    return-object v1
.end method
