.class public final Lcom/google/android/exoplayer2/source/b/b;
.super Ljava/lang/Object;
.source "DefaultHlsDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/b/d;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/e$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/e$a;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/b;->a:Lcom/google/android/exoplayer2/upstream/e$a;

    .line 32
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/upstream/e;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b/b;->a:Lcom/google/android/exoplayer2/upstream/e$a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/e$a;->a()Lcom/google/android/exoplayer2/upstream/e;

    move-result-object v0

    return-object v0
.end method
