.class public abstract Lcom/google/android/exoplayer2/source/dash/manifest/h;
.super Ljava/lang/Object;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/manifest/h$d;,
        Lcom/google/android/exoplayer2/source/dash/manifest/h$c;,
        Lcom/google/android/exoplayer2/source/dash/manifest/h$b;,
        Lcom/google/android/exoplayer2/source/dash/manifest/h$a;,
        Lcom/google/android/exoplayer2/source/dash/manifest/h$e;
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/source/dash/manifest/e;

.field final b:J

.field final c:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/e;JJ)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h;->a:Lcom/google/android/exoplayer2/source/dash/manifest/e;

    .line 41
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h;->b:J

    .line 42
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h;->c:J

    .line 43
    return-void
.end method


# virtual methods
.method public a()J
    .locals 6

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h;->c:J

    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h;->b:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/google/android/exoplayer2/source/dash/manifest/f;)Lcom/google/android/exoplayer2/source/dash/manifest/e;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/h;->a:Lcom/google/android/exoplayer2/source/dash/manifest/e;

    return-object v0
.end method
