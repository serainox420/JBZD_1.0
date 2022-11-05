.class public Lcom/google/android/exoplayer2/source/dash/manifest/f$a;
.super Lcom/google/android/exoplayer2/source/dash/manifest/f;
.source "Representation.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final g:Lcom/google/android/exoplayer2/source/dash/manifest/h$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/h$a;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/h$a;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/source/dash/manifest/f;-><init>(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/h;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/f$1;)V

    .line 275
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f$a;->g:Lcom/google/android/exoplayer2/source/dash/manifest/h$a;

    .line 276
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f$a;->g:Lcom/google/android/exoplayer2/source/dash/manifest/h$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->b()I

    move-result v0

    return v0
.end method

.method public a(J)I
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f$a;->g:Lcom/google/android/exoplayer2/source/dash/manifest/h$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->a(J)I

    move-result v0

    return v0
.end method

.method public a(JJ)I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f$a;->g:Lcom/google/android/exoplayer2/source/dash/manifest/h$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->a(JJ)I

    move-result v0

    return v0
.end method

.method public a(I)J
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f$a;->g:Lcom/google/android/exoplayer2/source/dash/manifest/h$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(IJ)J
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f$a;->g:Lcom/google/android/exoplayer2/source/dash/manifest/h$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->a(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(I)Lcom/google/android/exoplayer2/source/dash/manifest/e;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f$a;->g:Lcom/google/android/exoplayer2/source/dash/manifest/h$a;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->a(Lcom/google/android/exoplayer2/source/dash/manifest/f;I)Lcom/google/android/exoplayer2/source/dash/manifest/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/f$a;->g:Lcom/google/android/exoplayer2/source/dash/manifest/h$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/h$a;->c()Z

    move-result v0

    return v0
.end method

.method public d()Lcom/google/android/exoplayer2/source/dash/manifest/e;
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lcom/google/android/exoplayer2/source/dash/d;
    .locals 0

    .prologue
    .line 285
    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method
