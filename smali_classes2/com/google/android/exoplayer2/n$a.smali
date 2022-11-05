.class public final Lcom/google/android/exoplayer2/n$a;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 412
    iget-wide v0, p0, Lcom/google/android/exoplayer2/n$a;->d:J

    return-wide v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/n$a;
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/android/exoplayer2/n$a;->a:Ljava/lang/Object;

    .line 394
    iput-object p2, p0, Lcom/google/android/exoplayer2/n$a;->b:Ljava/lang/Object;

    .line 395
    iput p3, p0, Lcom/google/android/exoplayer2/n$a;->c:I

    .line 396
    iput-wide p4, p0, Lcom/google/android/exoplayer2/n$a;->d:J

    .line 397
    iput-wide p6, p0, Lcom/google/android/exoplayer2/n$a;->e:J

    .line 398
    return-object p0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 421
    iget-wide v0, p0, Lcom/google/android/exoplayer2/n$a;->e:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v0

    return-wide v0
.end method
