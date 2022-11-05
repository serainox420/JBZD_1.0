.class final Lcom/google/android/exoplayer2/extractor/c/b$d;
.super Ljava/lang/Object;
.source "AtomParsers.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/c/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/util/l;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/c/a$b;)V
    .locals 2

    .prologue
    .line 1225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1226
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/b$d;->c:Lcom/google/android/exoplayer2/util/l;

    .line 1227
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/b$d;->c:Lcom/google/android/exoplayer2/util/l;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 1228
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/b$d;->c:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/b$d;->a:I

    .line 1229
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/b$d;->c:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/b$d;->b:I

    .line 1230
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1234
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/b$d;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1239
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/b$d;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/b$d;->c:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/b$d;->a:I

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 1244
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/b$d;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
