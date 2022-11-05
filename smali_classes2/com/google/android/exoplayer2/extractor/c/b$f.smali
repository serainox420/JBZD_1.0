.class final Lcom/google/android/exoplayer2/extractor/c/b$f;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .prologue
    .line 1167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1168
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/c/b$f;->a:I

    .line 1169
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/c/b$f;->b:J

    .line 1170
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/c/b$f;->c:I

    .line 1171
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/c/b$f;)J
    .locals 2

    .prologue
    .line 1161
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/c/b$f;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/extractor/c/b$f;)I
    .locals 1

    .prologue
    .line 1161
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/b$f;->a:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/extractor/c/b$f;)I
    .locals 1

    .prologue
    .line 1161
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/b$f;->c:I

    return v0
.end method
