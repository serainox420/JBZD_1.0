.class final Lcom/google/android/exoplayer2/source/b/i;
.super Ljava/lang/Object;
.source "HlsSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/i;


# instance fields
.field public final a:I

.field private final b:Lcom/google/android/exoplayer2/source/b/j;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/b/j;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/i;->b:Lcom/google/android/exoplayer2/source/b/j;

    .line 34
    iput p2, p0, Lcom/google/android/exoplayer2/source/b/i;->a:I

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;Z)I
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/i;->b:Lcom/google/android/exoplayer2/source/b/j;

    iget v1, p0, Lcom/google/android/exoplayer2/source/b/i;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/b/j;->a(ILcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;Z)I

    move-result v0

    return v0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/i;->b:Lcom/google/android/exoplayer2/source/b/j;

    iget v1, p0, Lcom/google/android/exoplayer2/source/b/i;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/b/j;->a(I)Z

    move-result v0

    return v0
.end method

.method public a_(J)V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/i;->b:Lcom/google/android/exoplayer2/source/b/j;

    iget v1, p0, Lcom/google/android/exoplayer2/source/b/i;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/b/j;->a(IJ)V

    .line 55
    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/i;->b:Lcom/google/android/exoplayer2/source/b/j;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b/j;->g()V

    .line 45
    return-void
.end method
