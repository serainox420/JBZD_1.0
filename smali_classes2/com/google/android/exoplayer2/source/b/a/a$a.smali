.class public final Lcom/google/android/exoplayer2/source/b/a/a$a;
.super Ljava/lang/Object;
.source "HlsMasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b/a/a$a;->a:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/b/a/a$a;->b:Lcom/google/android/exoplayer2/Format;

    .line 46
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/b/a/a$a;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 38
    const-string v0, "0"

    const-string v1, "application/x-mpegURL"

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v3, v2

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/Format;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/google/android/exoplayer2/source/b/a/a$a;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/source/b/a/a$a;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;)V

    return-object v1
.end method
