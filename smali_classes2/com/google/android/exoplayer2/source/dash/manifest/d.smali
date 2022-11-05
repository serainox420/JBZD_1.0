.class public Lcom/google/android/exoplayer2/source/dash/manifest/d;
.super Ljava/lang/Object;
.source "Period.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/d;->a:Ljava/lang/String;

    .line 49
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/d;->b:J

    .line 50
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/d;->c:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 62
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/d;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/a;

    iget v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/a;->b:I

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 67
    :goto_1
    return v0

    .line 62
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
