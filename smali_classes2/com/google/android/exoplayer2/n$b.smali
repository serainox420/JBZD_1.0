.class public final Lcom/google/android/exoplayer2/n$b;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:J

.field public c:J

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:J

.field public i:J

.field public j:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 320
    iget-wide v0, p0, Lcom/google/android/exoplayer2/n$b;->h:J

    return-wide v0
.end method

.method public a(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/android/exoplayer2/n$b;
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/android/exoplayer2/n$b;->a:Ljava/lang/Object;

    .line 291
    iput-wide p2, p0, Lcom/google/android/exoplayer2/n$b;->b:J

    .line 292
    iput-wide p4, p0, Lcom/google/android/exoplayer2/n$b;->c:J

    .line 293
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/n$b;->d:Z

    .line 294
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/n$b;->e:Z

    .line 295
    iput-wide p8, p0, Lcom/google/android/exoplayer2/n$b;->h:J

    .line 296
    iput-wide p10, p0, Lcom/google/android/exoplayer2/n$b;->i:J

    .line 297
    iput p12, p0, Lcom/google/android/exoplayer2/n$b;->f:I

    .line 298
    iput p13, p0, Lcom/google/android/exoplayer2/n$b;->g:I

    .line 299
    iput-wide p14, p0, Lcom/google/android/exoplayer2/n$b;->j:J

    .line 300
    return-object p0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 327
    iget-wide v0, p0, Lcom/google/android/exoplayer2/n$b;->i:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/google/android/exoplayer2/n$b;->j:J

    return-wide v0
.end method
