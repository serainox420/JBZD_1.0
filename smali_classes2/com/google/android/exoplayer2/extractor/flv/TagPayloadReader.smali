.class abstract Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.super Ljava/lang/Object;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/exoplayer2/extractor/n;


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/extractor/n;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a:Lcom/google/android/exoplayer2/extractor/n;

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/exoplayer2/util/l;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/google/android/exoplayer2/util/l;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation
.end method

.method public final b(Lcom/google/android/exoplayer2/util/l;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a(Lcom/google/android/exoplayer2/util/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;->a(Lcom/google/android/exoplayer2/util/l;J)V

    .line 67
    :cond_0
    return-void
.end method
