.class final Lcom/google/android/exoplayer2/extractor/c/e$b;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/extractor/c/l;

.field public final b:Lcom/google/android/exoplayer2/extractor/n;

.field public c:Lcom/google/android/exoplayer2/extractor/c/j;

.field public d:Lcom/google/android/exoplayer2/extractor/c/c;

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/n;)V
    .locals 1

    .prologue
    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1292
    new-instance v0, Lcom/google/android/exoplayer2/extractor/c/l;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/c/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    .line 1293
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/c/e$b;->b:Lcom/google/android/exoplayer2/extractor/n;

    .line 1294
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1304
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/c/l;->a()V

    .line 1305
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/c/e$b;->e:I

    .line 1306
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/c/e$b;->g:I

    .line 1307
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/c/e$b;->f:I

    .line 1308
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/drm/DrmInitData;)V
    .locals 2

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e$b;->b:Lcom/google/android/exoplayer2/extractor/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e$b;->c:Lcom/google/android/exoplayer2/extractor/c/j;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/c/j;->f:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/Format;->a(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 1312
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/c/j;Lcom/google/android/exoplayer2/extractor/c/c;)V
    .locals 2

    .prologue
    .line 1297
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/j;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e$b;->c:Lcom/google/android/exoplayer2/extractor/c/j;

    .line 1298
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/c;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e$b;->d:Lcom/google/android/exoplayer2/extractor/c/c;

    .line 1299
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e$b;->b:Lcom/google/android/exoplayer2/extractor/n;

    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/c/j;->f:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 1300
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/c/e$b;->a()V

    .line 1301
    return-void
.end method
