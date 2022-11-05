.class Lcom/google/android/exoplayer2/source/a$a$4;
.super Ljava/lang/Object;
.source "AdaptiveMediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
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

.field final synthetic l:Ljava/io/IOException;

.field final synthetic m:Z

.field final synthetic n:Lcom/google/android/exoplayer2/source/a$a;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/a$a;Lcom/google/android/exoplayer2/upstream/g;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 2

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a$a$4;->n:Lcom/google/android/exoplayer2/source/a$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/a$a$4;->a:Lcom/google/android/exoplayer2/upstream/g;

    iput p3, p0, Lcom/google/android/exoplayer2/source/a$a$4;->b:I

    iput p4, p0, Lcom/google/android/exoplayer2/source/a$a$4;->c:I

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/a$a$4;->d:Lcom/google/android/exoplayer2/Format;

    iput p6, p0, Lcom/google/android/exoplayer2/source/a$a$4;->e:I

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/a$a$4;->f:Ljava/lang/Object;

    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/a$a$4;->g:J

    iput-wide p10, p0, Lcom/google/android/exoplayer2/source/a$a$4;->h:J

    iput-wide p12, p0, Lcom/google/android/exoplayer2/source/a$a$4;->i:J

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/a$a$4;->j:J

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/a$a$4;->k:J

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a$a$4;->l:Ljava/io/IOException;

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/a$a$4;->m:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a$a$4;->n:Lcom/google/android/exoplayer2/source/a$a;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/source/a$a;)Lcom/google/android/exoplayer2/source/a;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/a$a$4;->a:Lcom/google/android/exoplayer2/upstream/g;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/source/a$a$4;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/source/a$a$4;->c:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/a$a$4;->d:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/source/a$a$4;->e:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/a$a$4;->f:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a$a$4;->n:Lcom/google/android/exoplayer2/source/a$a;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/a$a$4;->g:J

    .line 273
    invoke-static {v2, v10, v11}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/source/a$a;J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/a$a$4;->n:Lcom/google/android/exoplayer2/source/a$a;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/a$a$4;->h:J

    .line 274
    invoke-static {v2, v12, v13}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/source/a$a;J)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/a$a$4;->i:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/a$a$4;->j:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/a$a$4;->k:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/a$a$4;->l:Ljava/io/IOException;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/a$a$4;->m:Z

    move/from16 v21, v0

    .line 272
    invoke-interface/range {v3 .. v21}, Lcom/google/android/exoplayer2/source/a;->a(Lcom/google/android/exoplayer2/upstream/g;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 276
    return-void
.end method
