.class public abstract Lcom/google/android/exoplayer2/source/a/c;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$c;


# instance fields
.field public final a:Lcom/google/android/exoplayer2/upstream/g;

.field public final b:I

.field public final c:Lcom/google/android/exoplayer2/Format;

.field public final d:I

.field public final e:Ljava/lang/Object;

.field public final f:J

.field public final g:J

.field protected final h:Lcom/google/android/exoplayer2/upstream/e;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/e;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a/c;->h:Lcom/google/android/exoplayer2/upstream/e;

    .line 81
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/g;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a/c;->a:Lcom/google/android/exoplayer2/upstream/g;

    .line 82
    iput p3, p0, Lcom/google/android/exoplayer2/source/a/c;->b:I

    .line 83
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/a/c;->c:Lcom/google/android/exoplayer2/Format;

    .line 84
    iput p5, p0, Lcom/google/android/exoplayer2/source/a/c;->d:I

    .line 85
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/a/c;->e:Ljava/lang/Object;

    .line 86
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/a/c;->f:J

    .line 87
    iput-wide p9, p0, Lcom/google/android/exoplayer2/source/a/c;->g:J

    .line 88
    return-void
.end method


# virtual methods
.method public abstract e()J
.end method
