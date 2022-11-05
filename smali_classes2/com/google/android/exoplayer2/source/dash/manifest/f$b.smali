.class public Lcom/google/android/exoplayer2/source/dash/manifest/f$b;
.super Lcom/google/android/exoplayer2/source/dash/manifest/f;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final g:Landroid/net/Uri;

.field public final h:J

.field private final i:Ljava/lang/String;

.field private final j:Lcom/google/android/exoplayer2/source/dash/manifest/e;

.field private final k:Lcom/google/android/exoplayer2/source/dash/manifest/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/h$e;Ljava/util/List;Ljava/lang/String;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/h$e;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/g;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 227
    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/source/dash/manifest/f;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/h;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/f$1;)V

    .line 228
    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f$b;->g:Landroid/net/Uri;

    .line 229
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/exoplayer2/source/dash/manifest/h$e;->b()Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f$b;->j:Lcom/google/android/exoplayer2/source/dash/manifest/e;

    .line 230
    if-eqz p8, :cond_0

    :goto_0
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f$b;->i:Ljava/lang/String;

    .line 232
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f$b;->h:J

    .line 235
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f$b;->j:Lcom/google/android/exoplayer2/source/dash/manifest/e;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f$b;->k:Lcom/google/android/exoplayer2/source/dash/manifest/i;

    .line 237
    return-void

    .line 230
    :cond_0
    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p4, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    goto :goto_0

    :cond_1
    const/16 p8, 0x0

    goto :goto_0

    .line 235
    :cond_2
    new-instance v8, Lcom/google/android/exoplayer2/source/dash/manifest/i;

    new-instance v2, Lcom/google/android/exoplayer2/source/dash/manifest/e;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide/from16 v6, p9

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/dash/manifest/e;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {v8, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/i;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/e;)V

    move-object v2, v8

    goto :goto_1
.end method


# virtual methods
.method public d()Lcom/google/android/exoplayer2/source/dash/manifest/e;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f$b;->j:Lcom/google/android/exoplayer2/source/dash/manifest/e;

    return-object v0
.end method

.method public e()Lcom/google/android/exoplayer2/source/dash/d;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f$b;->k:Lcom/google/android/exoplayer2/source/dash/manifest/i;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f$b;->i:Ljava/lang/String;

    return-object v0
.end method
