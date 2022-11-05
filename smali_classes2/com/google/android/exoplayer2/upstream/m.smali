.class public final Lcom/google/android/exoplayer2/upstream/m;
.super Lcom/google/android/exoplayer2/upstream/HttpDataSource$a;
.source "DefaultHttpDataSourceFactory.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/exoplayer2/upstream/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/r",
            "<-",
            "Lcom/google/android/exoplayer2/upstream/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/r;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/r",
            "<-",
            "Lcom/google/android/exoplayer2/upstream/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x1f40

    .line 54
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/m;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/r;IIZ)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/r;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/r",
            "<-",
            "Lcom/google/android/exoplayer2/upstream/e;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$a;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/m;->a:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/m;->b:Lcom/google/android/exoplayer2/upstream/r;

    .line 73
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/m;->c:I

    .line 74
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/m;->d:I

    .line 75
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/upstream/m;->e:Z

    .line 76
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;)Lcom/google/android/exoplayer2/upstream/l;
    .locals 8

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/exoplayer2/upstream/l;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/m;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/m;->b:Lcom/google/android/exoplayer2/upstream/r;

    iget v4, p0, Lcom/google/android/exoplayer2/upstream/m;->c:I

    iget v5, p0, Lcom/google/android/exoplayer2/upstream/m;->d:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/upstream/m;->e:Z

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/l;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/n;Lcom/google/android/exoplayer2/upstream/r;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;)V

    return-object v0
.end method

.method protected synthetic b(Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;)Lcom/google/android/exoplayer2/upstream/l;

    move-result-object v0

    return-object v0
.end method
