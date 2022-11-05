.class public final Lcom/google/android/exoplayer2/source/b/a/a;
.super Lcom/google/android/exoplayer2/source/b/a/c;
.source "HlsMasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/b/a/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/b/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/b/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/b/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/google/android/exoplayer2/Format;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/Format;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/b/a/a$a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/b/a/a$a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/b/a/a$a;",
            ">;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/b/a/c;-><init>(Ljava/lang/String;I)V

    .line 60
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/a;->a:Ljava/util/List;

    .line 61
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/a;->b:Ljava/util/List;

    .line 62
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/a;->c:Ljava/util/List;

    .line 63
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/b/a/a;->d:Lcom/google/android/exoplayer2/Format;

    .line 64
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/b/a/a;->e:Ljava/util/List;

    .line 65
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/b/a/a;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/b/a/a$a;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/b/a/a$a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 70
    new-instance v0, Lcom/google/android/exoplayer2/source/b/a/a;

    .line 71
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v4, v3

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/b/a/a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/Format;Ljava/util/List;)V

    return-object v0
.end method
