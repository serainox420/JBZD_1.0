.class Lcom/google/android/exoplayer2/source/a$a$2;
.super Ljava/lang/Object;
.source "AdaptiveMediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/upstream/g;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/exoplayer2/Format;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:J

.field final synthetic h:J

.field final synthetic i:J

.field final synthetic j:J

.field final synthetic k:J

.field final synthetic l:Lcom/google/android/exoplayer2/source/a$a;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/a$a;Lcom/google/android/exoplayer2/upstream/g;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V
    .locals 2

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a$a$2;->l:Lcom/google/android/exoplayer2/source/a$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/a$a$2;->a:Lcom/google/android/exoplayer2/upstream/g;

    iput p3, p0, Lcom/google/android/exoplayer2/source/a$a$2;->b:I

    iput p4, p0, Lcom/google/android/exoplayer2/source/a$a$2;->c:I

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/a$a$2;->d:Lcom/google/android/exoplayer2/Format;

    iput p6, p0, Lcom/google/android/exoplayer2/source/a$a$2;->e:I

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/a$a$2;->f:Ljava/lang/Object;

    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/a$a$2;->g:J

    iput-wide p10, p0, Lcom/google/android/exoplayer2/source/a$a$2;->h:J

    iput-wide p12, p0, Lcom/google/android/exoplayer2/source/a$a$2;->i:J

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/a$a$2;->j:J

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/a$a$2;->k:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a$a$2;->l:Lcom/google/android/exoplayer2/source/a$a;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/source/a$a;)Lcom/google/android/exoplayer2/source/a;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/a$a$2;->a:Lcom/google/android/exoplayer2/upstream/g;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/source/a$a$2;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/a$a$2;->c:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/a$a$2;->d:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/source/a$a$2;->e:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/a$a$2;->f:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a$a$2;->l:Lcom/google/android/exoplayer2/source/a$a;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/a$a$2;->g:J

    .line 227
    invoke-static {v2, v10, v11}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/source/a$a;J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a$a$2;->l:Lcom/google/android/exoplayer2/source/a$a;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/a$a$2;->h:J

    .line 228
    invoke-static {v2, v12, v13}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/source/a$a;J)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/a$a$2;->i:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/a$a$2;->j:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/a$a$2;->k:J

    move-wide/from16 v18, v0

    .line 226
    invoke-interface/range {v3 .. v19}, Lcom/google/android/exoplayer2/source/a;->a(Lcom/google/android/exoplayer2/upstream/g;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 229
    return-void
.end method
