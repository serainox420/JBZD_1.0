.class public final Lcom/google/android/exoplayer2/source/a/d;
.super Ljava/lang/Object;
.source "ChunkExtractorWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/a/d$a;,
        Lcom/google/android/exoplayer2/source/a/d$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/extractor/f;

.field private final b:Lcom/google/android/exoplayer2/Format;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/source/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/google/android/exoplayer2/source/a/d$b;

.field private f:Lcom/google/android/exoplayer2/extractor/m;

.field private g:[Lcom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/f;Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a/d;->a:Lcom/google/android/exoplayer2/extractor/f;

    .line 74
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/a/d;->b:Lcom/google/android/exoplayer2/Format;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a/d;->c:Landroid/util/SparseArray;

    .line 76
    return-void
.end method


# virtual methods
.method public a(II)Lcom/google/android/exoplayer2/extractor/n;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/a/d$a;

    .line 116
    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d;->g:[Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 119
    new-instance v0, Lcom/google/android/exoplayer2/source/a/d$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/d;->b:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/a/d$a;-><init>(IILcom/google/android/exoplayer2/Format;)V

    .line 120
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/d;->e:Lcom/google/android/exoplayer2/source/a/d$b;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/a/d$a;->a(Lcom/google/android/exoplayer2/source/a/d$b;)V

    .line 121
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    :cond_0
    return-object v0

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v2, v0, [Lcom/google/android/exoplayer2/Format;

    .line 129
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/a/d$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/a/d$a;->a:Lcom/google/android/exoplayer2/Format;

    aput-object v0, v2, v1

    .line 129
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 132
    :cond_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/a/d;->g:[Lcom/google/android/exoplayer2/Format;

    .line 133
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a/d;->f:Lcom/google/android/exoplayer2/extractor/m;

    .line 138
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/a/d$b;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 99
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a/d;->e:Lcom/google/android/exoplayer2/source/a/d$b;

    .line 100
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/a/d;->d:Z

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d;->a:Lcom/google/android/exoplayer2/extractor/f;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/extractor/f;->a(Lcom/google/android/exoplayer2/extractor/h;)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/a/d;->d:Z

    .line 109
    :cond_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d;->a:Lcom/google/android/exoplayer2/extractor/f;

    invoke-interface {v0, v2, v3, v2, v3}, Lcom/google/android/exoplayer2/extractor/f;->a(JJ)V

    .line 105
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/a/d$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/a/d$a;->a(Lcom/google/android/exoplayer2/source/a/d$b;)V

    .line 105
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b()Lcom/google/android/exoplayer2/extractor/m;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d;->f:Lcom/google/android/exoplayer2/extractor/m;

    return-object v0
.end method

.method public c()[Lcom/google/android/exoplayer2/Format;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a/d;->g:[Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method
