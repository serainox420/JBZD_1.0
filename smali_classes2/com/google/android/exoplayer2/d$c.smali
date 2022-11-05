.class public final Lcom/google/android/exoplayer2/d$c;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/d$b;

.field public final b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/d$b;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/google/android/exoplayer2/d$c;->a:Lcom/google/android/exoplayer2/d$b;

    .line 221
    iput p2, p0, Lcom/google/android/exoplayer2/d$c;->b:I

    .line 222
    iput-object p3, p0, Lcom/google/android/exoplayer2/d$c;->c:Ljava/lang/Object;

    .line 223
    return-void
.end method
