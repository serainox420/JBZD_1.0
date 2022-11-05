.class final Lcom/google/android/exoplayer2/extractor/f/r;
.super Ljava/lang/Object;
.source "SeiReader.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Lcom/google/android/exoplayer2/extractor/n;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/r;->a:Ljava/util/List;

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/n;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/r;->b:[Lcom/google/android/exoplayer2/extractor/n;

    .line 43
    return-void
.end method


# virtual methods
.method public a(JLcom/google/android/exoplayer2/util/l;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/r;->b:[Lcom/google/android/exoplayer2/extractor/n;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/text/a/g;->a(JLcom/google/android/exoplayer2/util/l;[Lcom/google/android/exoplayer2/extractor/n;)V

    .line 63
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/h;Lcom/google/android/exoplayer2/extractor/f/u$c;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 46
    move v8, v9

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/r;->b:[Lcom/google/android/exoplayer2/extractor/n;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 47
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->a()V

    .line 48
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->b()I

    move-result v0

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v10

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/r;->a:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/exoplayer2/Format;

    .line 50
    iget-object v1, v6, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    .line 51
    const-string v0, "application/cea-608"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/cea-708"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid closed caption mime type provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/a;->a(ZLjava/lang/Object;)V

    .line 54
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    iget v4, v6, Lcom/google/android/exoplayer2/Format;->w:I

    iget-object v5, v6, Lcom/google/android/exoplayer2/Format;->x:Ljava/lang/String;

    iget v6, v6, Lcom/google/android/exoplayer2/Format;->y:I

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-interface {v10, v0}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/r;->b:[Lcom/google/android/exoplayer2/extractor/n;

    aput-object v10, v0, v8

    .line 46
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    move v0, v9

    .line 52
    goto :goto_1

    .line 59
    :cond_2
    return-void
.end method
