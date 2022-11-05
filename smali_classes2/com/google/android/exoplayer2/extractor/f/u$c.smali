.class public final Lcom/google/android/exoplayer2/extractor/f/u$c;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/f/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 93
    const/high16 v0, -0x80000000

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/f/u$c;-><init>(III)V

    .line 94
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    if-eq p1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/u$c;->a:Ljava/lang/String;

    .line 98
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/f/u$c;->b:I

    .line 99
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/f/u$c;->c:I

    .line 100
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/f/u$c;->d:I

    .line 101
    return-void

    .line 97
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/u$c;->d:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generateNewId() must be called before retrieving ids."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/u$c;->d:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/u$c;->b:I

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/u$c;->d:I

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/u$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/u$c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/u$c;->e:Ljava/lang/String;

    .line 110
    return-void

    .line 108
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/u$c;->d:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/f/u$c;->c:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/u$c;->d()V

    .line 120
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/u$c;->d:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/u$c;->d()V

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/u$c;->e:Ljava/lang/String;

    return-object v0
.end method
