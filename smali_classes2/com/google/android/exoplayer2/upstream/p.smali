.class public final Lcom/google/android/exoplayer2/upstream/p;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$c;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/upstream/g;

.field public final b:I

.field private final c:Lcom/google/android/exoplayer2/upstream/e;

.field private final d:Lcom/google/android/exoplayer2/upstream/p$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/p$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile f:Z

.field private volatile g:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/e;Landroid/net/Uri;ILcom/google/android/exoplayer2/upstream/p$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/e;",
            "Landroid/net/Uri;",
            "I",
            "Lcom/google/android/exoplayer2/upstream/p$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/p;->c:Lcom/google/android/exoplayer2/upstream/e;

    .line 76
    new-instance v0, Lcom/google/android/exoplayer2/upstream/g;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/google/android/exoplayer2/upstream/g;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    .line 77
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/p;->b:I

    .line 78
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/p;->d:Lcom/google/android/exoplayer2/upstream/p$a;

    .line 79
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/p;->f:Z

    .line 103
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/p;->f:Z

    return v0
.end method

.method public final c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v1, Lcom/google/android/exoplayer2/upstream/f;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/p;->c:Lcom/google/android/exoplayer2/upstream/e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/p;->a:Lcom/google/android/exoplayer2/upstream/g;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/upstream/f;-><init>(Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/upstream/g;)V

    .line 114
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/f;->b()V

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/p;->d:Lcom/google/android/exoplayer2/upstream/p$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/p;->c:Lcom/google/android/exoplayer2/upstream/e;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/e;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/upstream/p$a;->b(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/p;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/f;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/p;->g:J

    .line 118
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/io/Closeable;)V

    .line 120
    return-void

    .line 117
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/f;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/p;->g:J

    .line 118
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/p;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/p;->g:J

    return-wide v0
.end method
