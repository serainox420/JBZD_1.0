.class final Lcom/google/android/exoplayer2/source/a/d$a;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/google/android/exoplayer2/Format;

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/android/exoplayer2/Format;

.field private e:Lcom/google/android/exoplayer2/extractor/n;


# direct methods
.method public constructor <init>(IILcom/google/android/exoplayer2/Format;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput p1, p0, Lcom/google/android/exoplayer2/source/a/d$a;->b:I

    .line 153
    iput p2, p0, Lcom/google/android/exoplayer2/source/a/d$a;->c:I

    .line 154
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/a/d$a;->d:Lcom/google/android/exoplayer2/Format;

    .line 155
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/g;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->e:Lcom/google/android/exoplayer2/extractor/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/extractor/g;IZ)I

    move-result v0

    return v0
.end method

.method public a(JIII[B)V
    .locals 9

    .prologue
    .line 190
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/d$a;->e:Lcom/google/android/exoplayer2/extractor/n;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    .line 191
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->d:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Format;->a(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->a:Lcom/google/android/exoplayer2/Format;

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->e:Lcom/google/android/exoplayer2/extractor/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/d$a;->a:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 174
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/a/d$b;)V
    .locals 2

    .prologue
    .line 158
    if-nez p1, :cond_1

    .line 159
    new-instance v0, Lcom/google/android/exoplayer2/extractor/e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->e:Lcom/google/android/exoplayer2/extractor/n;

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->b:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/a/d$a;->c:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/source/a/d$b;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->e:Lcom/google/android/exoplayer2/extractor/n;

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->e:Lcom/google/android/exoplayer2/extractor/n;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->e:Lcom/google/android/exoplayer2/extractor/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/d$a;->a:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/util/l;I)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d$a;->e:Lcom/google/android/exoplayer2/extractor/n;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 185
    return-void
.end method
