.class Lcom/google/android/exoplayer2/extractor/d/a$a;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/extractor/d/a;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/extractor/d/a;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/a$a;->a:Lcom/google/android/exoplayer2/extractor/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/extractor/d/a;Lcom/google/android/exoplayer2/extractor/d/a$1;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/d/a$a;-><init>(Lcom/google/android/exoplayer2/extractor/d/a;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a$a;->a:Lcom/google/android/exoplayer2/extractor/d/a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/d/a;->b(Lcom/google/android/exoplayer2/extractor/d/a;)Lcom/google/android/exoplayer2/extractor/d/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/a$a;->a:Lcom/google/android/exoplayer2/extractor/d/a;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/d/a;->c(Lcom/google/android/exoplayer2/extractor/d/a;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/d/h;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)J
    .locals 9

    .prologue
    .line 223
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a$a;->a:Lcom/google/android/exoplayer2/extractor/d/a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/d/a;->a(Lcom/google/android/exoplayer2/extractor/d/a;)J

    move-result-wide v0

    .line 227
    :goto_0
    return-wide v0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a$a;->a:Lcom/google/android/exoplayer2/extractor/d/a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/d/a;->b(Lcom/google/android/exoplayer2/extractor/d/a;)Lcom/google/android/exoplayer2/extractor/d/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/d/h;->b(J)J

    move-result-wide v4

    .line 227
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/a$a;->a:Lcom/google/android/exoplayer2/extractor/d/a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/a$a;->a:Lcom/google/android/exoplayer2/extractor/d/a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/d/a;->a(Lcom/google/android/exoplayer2/extractor/d/a;)J

    move-result-wide v2

    const-wide/16 v6, 0x7530

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/d/a;->a(Lcom/google/android/exoplayer2/extractor/d/a;JJJ)J

    move-result-wide v0

    goto :goto_0
.end method
