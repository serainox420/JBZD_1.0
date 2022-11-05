.class final Lcom/google/android/exoplayer2/text/a/b;
.super Lcom/google/android/exoplayer2/text/b;
.source "Cea708Cue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/text/b;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/exoplayer2/text/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final l:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/text/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    .line 54
    iput p11, p0, Lcom/google/android/exoplayer2/text/a/b;->l:I

    .line 55
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/text/a/b;)I
    .locals 2

    .prologue
    .line 59
    iget v0, p1, Lcom/google/android/exoplayer2/text/a/b;->l:I

    iget v1, p0, Lcom/google/android/exoplayer2/text/a/b;->l:I

    if-ge v0, v1, :cond_0

    .line 60
    const/4 v0, -0x1

    .line 64
    :goto_0
    return v0

    .line 61
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/text/a/b;->l:I

    iget v1, p0, Lcom/google/android/exoplayer2/text/a/b;->l:I

    if-le v0, v1, :cond_1

    .line 62
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/google/android/exoplayer2/text/a/b;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/a/b;->a(Lcom/google/android/exoplayer2/text/a/b;)I

    move-result v0

    return v0
.end method
