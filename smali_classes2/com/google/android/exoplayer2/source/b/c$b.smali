.class public final Lcom/google/android/exoplayer2/source/b/c$b;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/google/android/exoplayer2/source/a/c;

.field public b:Z

.field public c:Lcom/google/android/exoplayer2/source/b/a/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/b/c$b;->a()V

    .line 56
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/b/c$b;->a:Lcom/google/android/exoplayer2/source/a/c;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/b/c$b;->b:Z

    .line 79
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/b/c$b;->c:Lcom/google/android/exoplayer2/source/b/a/a$a;

    .line 80
    return-void
.end method
