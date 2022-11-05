.class public final Lcom/google/android/exoplayer2/b/e$b;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/b/f$a;

.field public final b:I

.field public final c:[I


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/m;)Lcom/google/android/exoplayer2/b/f;
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/b/e$b;->a:Lcom/google/android/exoplayer2/b/f$a;

    iget v1, p0, Lcom/google/android/exoplayer2/b/e$b;->b:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/m;->a(I)Lcom/google/android/exoplayer2/source/l;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/b/e$b;->c:[I

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/b/f$a;->b(Lcom/google/android/exoplayer2/source/l;[I)Lcom/google/android/exoplayer2/b/f;

    move-result-object v0

    return-object v0
.end method
