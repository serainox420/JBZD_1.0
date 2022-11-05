.class public Lcom/google/android/exoplayer2/source/dash/manifest/a;
.super Ljava/lang/Object;
.source "AdaptationSet.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/f;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/a;->a:I

    .line 64
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/a;->b:I

    .line 65
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/a;->c:Ljava/util/List;

    .line 66
    if-nez p4, :cond_0

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 68
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/a;->d:Ljava/util/List;

    .line 69
    return-void

    .line 68
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
