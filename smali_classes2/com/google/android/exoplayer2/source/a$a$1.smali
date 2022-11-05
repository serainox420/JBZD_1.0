.class Lcom/google/android/exoplayer2/source/a$a$1;
.super Ljava/lang/Object;
.source "AdaptiveMediaSourceEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/upstream/g;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
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

.field final synthetic j:Lcom/google/android/exoplayer2/source/a$a;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/a$a;Lcom/google/android/exoplayer2/upstream/g;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a$a$1;->j:Lcom/google/android/exoplayer2/source/a$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/a$a$1;->a:Lcom/google/android/exoplayer2/upstream/g;

    iput p3, p0, Lcom/google/android/exoplayer2/source/a$a$1;->b:I

    iput p4, p0, Lcom/google/android/exoplayer2/source/a$a$1;->c:I

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/a$a$1;->d:Lcom/google/android/exoplayer2/Format;

    iput p6, p0, Lcom/google/android/exoplayer2/source/a$a$1;->e:I

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/a$a$1;->f:Ljava/lang/Object;

    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/a$a$1;->g:J

    iput-wide p10, p0, Lcom/google/android/exoplayer2/source/a$a$1;->h:J

    iput-wide p12, p0, Lcom/google/android/exoplayer2/source/a$a$1;->i:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a$a$1;->j:Lcom/google/android/exoplayer2/source/a$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/source/a$a;)Lcom/google/android/exoplayer2/source/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/a$a$1;->a:Lcom/google/android/exoplayer2/upstream/g;

    iget v3, p0, Lcom/google/android/exoplayer2/source/a$a$1;->b:I

    iget v4, p0, Lcom/google/android/exoplayer2/source/a$a$1;->c:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/a$a$1;->d:Lcom/google/android/exoplayer2/Format;

    iget v6, p0, Lcom/google/android/exoplayer2/source/a$a$1;->e:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/a$a$1;->f:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a$a$1;->j:Lcom/google/android/exoplayer2/source/a$a;

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/a$a$1;->g:J

    .line 205
    invoke-static {v0, v8, v9}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/source/a$a;J)J

    move-result-wide v8

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a$a$1;->j:Lcom/google/android/exoplayer2/source/a$a;

    iget-wide v10, p0, Lcom/google/android/exoplayer2/source/a$a$1;->h:J

    .line 206
    invoke-static {v0, v10, v11}, Lcom/google/android/exoplayer2/source/a$a;->a(Lcom/google/android/exoplayer2/source/a$a;J)J

    move-result-wide v10

    iget-wide v12, p0, Lcom/google/android/exoplayer2/source/a$a$1;->i:J

    .line 204
    invoke-interface/range {v1 .. v13}, Lcom/google/android/exoplayer2/source/a;->a(Lcom/google/android/exoplayer2/upstream/g;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    .line 207
    return-void
.end method
