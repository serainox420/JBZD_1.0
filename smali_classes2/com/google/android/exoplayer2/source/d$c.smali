.class final Lcom/google/android/exoplayer2/source/d$c;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/d;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/d;I)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d$c;->a:Lcom/google/android/exoplayer2/source/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput p2, p0, Lcom/google/android/exoplayer2/source/d$c;->b:I

    .line 549
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/d$c;)I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/google/android/exoplayer2/source/d$c;->b:I

    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;Z)I
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$c;->a:Lcom/google/android/exoplayer2/source/d;

    iget v1, p0, Lcom/google/android/exoplayer2/source/d$c;->b:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/d;->a(ILcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;Z)I

    move-result v0

    return v0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$c;->a:Lcom/google/android/exoplayer2/source/d;

    iget v1, p0, Lcom/google/android/exoplayer2/source/d$c;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/d;->a(I)Z

    move-result v0

    return v0
.end method

.method public a_(J)V
    .locals 3

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$c;->a:Lcom/google/android/exoplayer2/source/d;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/d;->d(Lcom/google/android/exoplayer2/source/d;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/d$c;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/d;->a(J)Z

    .line 570
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
    .line 558
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$c;->a:Lcom/google/android/exoplayer2/source/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/d;->g()V

    .line 559
    return-void
.end method
