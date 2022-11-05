.class public final Lcom/google/android/exoplayer2/source/a/f$a;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/a/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/android/exoplayer2/source/a/f;

.field private final c:Lcom/google/android/exoplayer2/extractor/d;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/a/f;Lcom/google/android/exoplayer2/source/a/f;Lcom/google/android/exoplayer2/extractor/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/a/f",
            "<TT;>;",
            "Lcom/google/android/exoplayer2/extractor/d;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 439
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a/f$a;->b:Lcom/google/android/exoplayer2/source/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/a/f$a;->a:Lcom/google/android/exoplayer2/source/a/f;

    .line 441
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/a/f$a;->c:Lcom/google/android/exoplayer2/extractor/d;

    .line 442
    iput p4, p0, Lcom/google/android/exoplayer2/source/a/f$a;->d:I

    .line 443
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;Z)I
    .locals 8

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f$a;->b:Lcom/google/android/exoplayer2/source/a/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    const/4 v0, -0x3

    .line 466
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/f$a;->c:Lcom/google/android/exoplayer2/extractor/d;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f$a;->b:Lcom/google/android/exoplayer2/source/a/f;

    iget-boolean v5, v0, Lcom/google/android/exoplayer2/source/a/f;->b:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f$a;->b:Lcom/google/android/exoplayer2/source/a/f;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/a/f;->a:J

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/d;->a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;ZZJ)I

    move-result v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f$a;->b:Lcom/google/android/exoplayer2/source/a/f;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/a/f;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f$a;->b:Lcom/google/android/exoplayer2/source/a/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a/f;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f$a;->c:Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_(J)V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f$a;->c:Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/d;->a(J)Z

    .line 453
    return-void
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f$a;->b:Lcom/google/android/exoplayer2/source/a/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/a/f;->a(Lcom/google/android/exoplayer2/source/a/f;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/a/f$a;->d:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 472
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/f$a;->b:Lcom/google/android/exoplayer2/source/a/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/a/f;->a(Lcom/google/android/exoplayer2/source/a/f;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/a/f$a;->d:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 473
    return-void
.end method
