.class final Lcom/google/android/exoplayer2/source/d$b;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:[Lcom/google/android/exoplayer2/extractor/f;

.field private final b:Lcom/google/android/exoplayer2/extractor/h;

.field private c:Lcom/google/android/exoplayer2/extractor/f;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/extractor/f;Lcom/google/android/exoplayer2/extractor/h;)V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d$b;->a:[Lcom/google/android/exoplayer2/extractor/f;

    .line 680
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/d$b;->b:Lcom/google/android/exoplayer2/extractor/h;

    .line 681
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/g;Landroid/net/Uri;)Lcom/google/android/exoplayer2/extractor/f;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 696
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$b;->c:Lcom/google/android/exoplayer2/extractor/f;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$b;->c:Lcom/google/android/exoplayer2/extractor/f;

    .line 716
    :goto_0
    return-object v0

    .line 699
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d$b;->a:[Lcom/google/android/exoplayer2/extractor/f;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 701
    :try_start_0
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/extractor/f;->a(Lcom/google/android/exoplayer2/extractor/g;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 702
    iput-object v3, p0, Lcom/google/android/exoplayer2/source/d$b;->c:Lcom/google/android/exoplayer2/extractor/f;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->a()V

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$b;->c:Lcom/google/android/exoplayer2/extractor/f;

    if-nez v0, :cond_3

    .line 712
    new-instance v0, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "None of the available extractors ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/d$b;->a:[Lcom/google/android/exoplayer2/extractor/f;

    .line 713
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") could read the stream."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw v0

    .line 708
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->a()V

    .line 699
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 705
    :catch_0
    move-exception v3

    .line 708
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->a()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->a()V

    throw v0

    .line 715
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$b;->c:Lcom/google/android/exoplayer2/extractor/f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d$b;->b:Lcom/google/android/exoplayer2/extractor/h;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/f;->a(Lcom/google/android/exoplayer2/extractor/h;)V

    .line 716
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$b;->c:Lcom/google/android/exoplayer2/extractor/f;

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$b;->c:Lcom/google/android/exoplayer2/extractor/f;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d$b;->c:Lcom/google/android/exoplayer2/extractor/f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/f;->c()V

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/d$b;->c:Lcom/google/android/exoplayer2/extractor/f;

    .line 724
    :cond_0
    return-void
.end method
