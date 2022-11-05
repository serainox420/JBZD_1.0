.class Lcom/google/android/exoplayer2/extractor/f/t$a;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/f/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/extractor/f/t;

.field private final b:Lcom/google/android/exoplayer2/util/k;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/f/t;)V
    .locals 2

    .prologue
    .line 307
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/t$a;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/k;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$a;->b:Lcom/google/android/exoplayer2/util/k;

    .line 309
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/l;)V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v1, 0x0

    .line 319
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    .line 320
    if-eqz v0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 329
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    div-int/lit8 v2, v0, 0x4

    move v0, v1

    .line 330
    :goto_1
    if-ge v0, v2, :cond_3

    .line 331
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/t$a;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v4, 0x4

    invoke-virtual {p1, v3, v4}, Lcom/google/android/exoplayer2/util/l;->a(Lcom/google/android/exoplayer2/util/k;I)V

    .line 332
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/t$a;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v3

    .line 333
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/t$a;->b:Lcom/google/android/exoplayer2/util/k;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 334
    if-nez v3, :cond_2

    .line 335
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/t$a;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 330
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 337
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/t$a;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v3

    .line 338
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/t$a;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/f/t;->a(Lcom/google/android/exoplayer2/extractor/f/t;)Landroid/util/SparseArray;

    move-result-object v4

    new-instance v5, Lcom/google/android/exoplayer2/extractor/f/q;

    new-instance v6, Lcom/google/android/exoplayer2/extractor/f/t$b;

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/f/t$a;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-direct {v6, v7, v3}, Lcom/google/android/exoplayer2/extractor/f/t$b;-><init>(Lcom/google/android/exoplayer2/extractor/f/t;I)V

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/extractor/f/q;-><init>(Lcom/google/android/exoplayer2/extractor/f/p;)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/t$a;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/f/t;->b(Lcom/google/android/exoplayer2/extractor/f/t;)I

    goto :goto_2

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$a;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/t;->c(Lcom/google/android/exoplayer2/extractor/f/t;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t$a;->a:Lcom/google/android/exoplayer2/extractor/f/t;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/f/t;->a(Lcom/google/android/exoplayer2/extractor/f/t;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/exoplayer2/util/s;Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V
    .locals 0

    .prologue
    .line 315
    return-void
.end method
