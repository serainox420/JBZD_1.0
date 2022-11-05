.class public abstract Lcom/google/android/exoplayer2/b/h;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/b/h$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/b/h$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public abstract a([Lcom/google/android/exoplayer2/k;Lcom/google/android/exoplayer2/source/m;)Lcom/google/android/exoplayer2/b/i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final a(Lcom/google/android/exoplayer2/b/h$a;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer2/b/h;->a:Lcom/google/android/exoplayer2/b/h$a;

    .line 46
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method
