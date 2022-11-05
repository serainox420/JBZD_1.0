.class final Lcom/google/android/exoplayer2/source/dash/manifest/c$a;
.super Ljava/lang/Object;
.source "DashManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/Format;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/exoplayer2/source/dash/manifest/h;

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/h;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/h;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/c$a;->a:Lcom/google/android/exoplayer2/Format;

    .line 933
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/c$a;->b:Ljava/lang/String;

    .line 934
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/c$a;->c:Lcom/google/android/exoplayer2/source/dash/manifest/h;

    .line 935
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/c$a;->d:Ljava/util/ArrayList;

    .line 936
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/manifest/c$a;->e:Ljava/util/ArrayList;

    .line 937
    return-void
.end method
