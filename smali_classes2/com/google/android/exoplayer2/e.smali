.class public final Lcom/google/android/exoplayer2/e;
.super Ljava/lang/Object;
.source "ExoPlayerFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/exoplayer2/b/h;Lcom/google/android/exoplayer2/i;)Lcom/google/android/exoplayer2/m;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/e;->a(Landroid/content/Context;Lcom/google/android/exoplayer2/b/h;Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/drm/a;)Lcom/google/android/exoplayer2/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/exoplayer2/b/h;Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/drm/a;)Lcom/google/android/exoplayer2/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/b/h;",
            "Lcom/google/android/exoplayer2/i;",
            "Lcom/google/android/exoplayer2/drm/a",
            "<",
            "Lcom/google/android/exoplayer2/drm/c;",
            ">;)",
            "Lcom/google/android/exoplayer2/m;"
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/e;->a(Landroid/content/Context;Lcom/google/android/exoplayer2/b/h;Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/drm/a;I)Lcom/google/android/exoplayer2/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/exoplayer2/b/h;Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/drm/a;I)Lcom/google/android/exoplayer2/m;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/b/h;",
            "Lcom/google/android/exoplayer2/i;",
            "Lcom/google/android/exoplayer2/drm/a",
            "<",
            "Lcom/google/android/exoplayer2/drm/c;",
            ">;I)",
            "Lcom/google/android/exoplayer2/m;"
        }
    .end annotation

    .prologue
    .line 82
    const-wide/16 v6, 0x1388

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/e;->a(Landroid/content/Context;Lcom/google/android/exoplayer2/b/h;Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/drm/a;IJ)Lcom/google/android/exoplayer2/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/exoplayer2/b/h;Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/drm/a;IJ)Lcom/google/android/exoplayer2/m;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/b/h;",
            "Lcom/google/android/exoplayer2/i;",
            "Lcom/google/android/exoplayer2/drm/a",
            "<",
            "Lcom/google/android/exoplayer2/drm/c;",
            ">;IJ)",
            "Lcom/google/android/exoplayer2/m;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/google/android/exoplayer2/m;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/m;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/b/h;Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/drm/a;IJ)V

    return-object v0
.end method
