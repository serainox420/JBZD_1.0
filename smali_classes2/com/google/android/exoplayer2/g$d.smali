.class public final Lcom/google/android/exoplayer2/g$d;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/n;

.field public final b:Ljava/lang/Object;

.field public final c:Lcom/google/android/exoplayer2/g$b;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;Lcom/google/android/exoplayer2/g$b;I)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/g$d;->a:Lcom/google/android/exoplayer2/n;

    .line 83
    iput-object p2, p0, Lcom/google/android/exoplayer2/g$d;->b:Ljava/lang/Object;

    .line 84
    iput-object p3, p0, Lcom/google/android/exoplayer2/g$d;->c:Lcom/google/android/exoplayer2/g$b;

    .line 85
    iput p4, p0, Lcom/google/android/exoplayer2/g$d;->d:I

    .line 86
    return-void
.end method
