.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/a$a;
.super Ljava/lang/Object;
.source "DefaultSsChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/e$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/e$a;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a$a;->a:Lcom/google/android/exoplayer2/upstream/e$a;

    .line 51
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;ILcom/google/android/exoplayer2/b/f;[Lcom/google/android/exoplayer2/extractor/c/k;)Lcom/google/android/exoplayer2/source/smoothstreaming/b;
    .locals 7

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a$a;->a:Lcom/google/android/exoplayer2/upstream/e$a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/e$a;->a()Lcom/google/android/exoplayer2/upstream/e;

    move-result-object v5

    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/smoothstreaming/a;-><init>(Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;ILcom/google/android/exoplayer2/b/f;Lcom/google/android/exoplayer2/upstream/e;[Lcom/google/android/exoplayer2/extractor/c/k;)V

    return-object v0
.end method
