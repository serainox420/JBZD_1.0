.class Lcom/google/android/exoplayer2/source/d$3;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/d$b;

.field final synthetic b:Lcom/google/android/exoplayer2/source/d;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/d;Lcom/google/android/exoplayer2/source/d$b;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d$3;->b:Lcom/google/android/exoplayer2/source/d;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/d$3;->a:Lcom/google/android/exoplayer2/source/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$3;->a:Lcom/google/android/exoplayer2/source/d$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/d$b;->a()V

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$3;->b:Lcom/google/android/exoplayer2/source/d;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/d;->d(Lcom/google/android/exoplayer2/source/d;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 152
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$3;->b:Lcom/google/android/exoplayer2/source/d;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/d;->d(Lcom/google/android/exoplayer2/source/d;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/d;->c()V

    .line 152
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method
