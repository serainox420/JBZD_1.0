.class Lcom/google/android/exoplayer2/source/MergingMediaSource$1;
.super Ljava/lang/Object;
.source "MergingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/MergingMediaSource;->a(Lcom/google/android/exoplayer2/d;ZLcom/google/android/exoplayer2/source/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/exoplayer2/source/MergingMediaSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/MergingMediaSource;I)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$1;->b:Lcom/google/android/exoplayer2/source/MergingMediaSource;

    iput p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$1;->b:Lcom/google/android/exoplayer2/source/MergingMediaSource;

    iget v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$1;->a:I

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a(Lcom/google/android/exoplayer2/source/MergingMediaSource;ILcom/google/android/exoplayer2/n;Ljava/lang/Object;)V

    .line 103
    return-void
.end method
