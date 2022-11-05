.class final Lcom/google/android/exoplayer2/g$c;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/n;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/n;IJ)V
    .locals 1

    .prologue
    .line 1530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1531
    iput-object p1, p0, Lcom/google/android/exoplayer2/g$c;->a:Lcom/google/android/exoplayer2/n;

    .line 1532
    iput p2, p0, Lcom/google/android/exoplayer2/g$c;->b:I

    .line 1533
    iput-wide p3, p0, Lcom/google/android/exoplayer2/g$c;->c:J

    .line 1534
    return-void
.end method
