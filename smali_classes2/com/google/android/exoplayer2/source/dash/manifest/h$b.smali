.class public Lcom/google/android/exoplayer2/source/dash/manifest/h$b;
.super Lcom/google/android/exoplayer2/source/dash/manifest/h$a;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJIJLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/e;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/h$d;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJIJLjava/util/List;)V

    .line 250
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$b;->g:Ljava/util/List;

    .line 251
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/exoplayer2/source/dash/manifest/f;I)Lcom/google/android/exoplayer2/source/dash/manifest/e;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$b;->g:Ljava/util/List;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h$b;->d:I

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/e;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method
