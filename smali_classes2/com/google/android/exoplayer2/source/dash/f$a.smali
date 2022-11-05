.class public final Lcom/google/android/exoplayer2/source/dash/f$a;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/e$a;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/e$a;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/dash/f$a;-><init>(Lcom/google/android/exoplayer2/upstream/e$a;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/e$a;I)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/f$a;->a:Lcom/google/android/exoplayer2/upstream/e$a;

    .line 67
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/f$a;->b:I

    .line 68
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/source/dash/manifest/b;IILcom/google/android/exoplayer2/b/f;JZZ)Lcom/google/android/exoplayer2/source/dash/a;
    .locals 14

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/f$a;->a:Lcom/google/android/exoplayer2/upstream/e$a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/e$a;->a()Lcom/google/android/exoplayer2/upstream/e;

    move-result-object v7

    .line 76
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/f;

    iget v10, p0, Lcom/google/android/exoplayer2/source/dash/f$a;->b:I

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v8, p6

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/source/dash/f;-><init>(Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/source/dash/manifest/b;IILcom/google/android/exoplayer2/b/f;Lcom/google/android/exoplayer2/upstream/e;JIZZ)V

    return-object v1
.end method
