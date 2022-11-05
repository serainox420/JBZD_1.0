.class final Lcom/google/android/exoplayer2/extractor/a/d$a;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/extractor/a/d;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/extractor/a/d;)V
    .locals 0

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/a/d$a;->a:Lcom/google/android/exoplayer2/extractor/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/a/d;Lcom/google/android/exoplayer2/extractor/a/d$1;)V
    .locals 0

    .prologue
    .line 1257
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/a/d$a;-><init>(Lcom/google/android/exoplayer2/extractor/a/d;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d$a;->a:Lcom/google/android/exoplayer2/extractor/a/d;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/a/d;->a(I)I

    move-result v0

    return v0
.end method

.method public a(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d$a;->a:Lcom/google/android/exoplayer2/extractor/a/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/a/d;->a(ID)V

    .line 1288
    return-void
.end method

.method public a(IILcom/google/android/exoplayer2/extractor/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d$a;->a:Lcom/google/android/exoplayer2/extractor/a/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/a/d;->a(IILcom/google/android/exoplayer2/extractor/g;)V

    .line 1299
    return-void
.end method

.method public a(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d$a;->a:Lcom/google/android/exoplayer2/extractor/a/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/a/d;->a(IJ)V

    .line 1283
    return-void
.end method

.method public a(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d$a;->a:Lcom/google/android/exoplayer2/extractor/a/d;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/a/d;->a(IJJ)V

    .line 1273
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d$a;->a:Lcom/google/android/exoplayer2/extractor/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/a/d;->a(ILjava/lang/String;)V

    .line 1293
    return-void
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d$a;->a:Lcom/google/android/exoplayer2/extractor/a/d;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/a/d;->b(I)Z

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d$a;->a:Lcom/google/android/exoplayer2/extractor/a/d;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/a/d;->c(I)V

    .line 1278
    return-void
.end method
