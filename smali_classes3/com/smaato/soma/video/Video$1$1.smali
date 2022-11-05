.class Lcom/smaato/soma/video/Video$1$1;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Lcom/smaato/soma/video/a/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/Video$1;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/video/Video$1;


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/Video$1;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/smaato/soma/video/Video$1$1;->a:Lcom/smaato/soma/video/Video$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 8

    .prologue
    .line 364
    if-eqz p1, :cond_0

    .line 365
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "VIDEO"

    const-string v2, "Video downloaded successfully"

    const/4 v3, 0x1

    sget-object v4, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/video/Video$1$1;->a:Lcom/smaato/soma/video/Video$1;

    iget-object v0, v0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    iget-object v1, p0, Lcom/smaato/soma/video/Video$1$1;->a:Lcom/smaato/soma/video/Video$1;

    iget-object v1, v1, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v1}, Lcom/smaato/soma/video/Video;->c(Lcom/smaato/soma/video/Video;)Lcom/smaato/soma/internal/d/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smaato/soma/video/Video;->b(Lcom/smaato/soma/video/Video;Lcom/smaato/soma/internal/d/c;)Z

    .line 369
    new-instance v0, Lcom/smaato/soma/video/c;

    iget-object v1, p0, Lcom/smaato/soma/video/Video$1$1;->a:Lcom/smaato/soma/video/Video$1;

    iget-object v1, v1, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v1}, Lcom/smaato/soma/video/Video;->b(Lcom/smaato/soma/video/Video;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/smaato/soma/video/Video$1$1;->a:Lcom/smaato/soma/video/Video$1;

    iget-object v2, v2, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v2}, Lcom/smaato/soma/video/Video;->c(Lcom/smaato/soma/video/Video;)Lcom/smaato/soma/internal/d/c;

    move-result-object v2

    iget-object v3, p0, Lcom/smaato/soma/video/Video$1$1;->a:Lcom/smaato/soma/video/Video$1;

    iget-object v3, v3, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v3}, Lcom/smaato/soma/video/Video;->d(Lcom/smaato/soma/video/Video;)Z

    move-result v3

    iget-object v4, p0, Lcom/smaato/soma/video/Video$1$1;->a:Lcom/smaato/soma/video/Video$1;

    iget-object v4, v4, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-virtual {v4}, Lcom/smaato/soma/video/Video;->e()Lcom/smaato/soma/video/b;

    move-result-object v4

    iget-object v5, p0, Lcom/smaato/soma/video/Video$1$1;->a:Lcom/smaato/soma/video/Video$1;

    iget-object v5, v5, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-virtual {v5}, Lcom/smaato/soma/video/Video;->b()I

    move-result v5

    iget-object v6, p0, Lcom/smaato/soma/video/Video$1$1;->a:Lcom/smaato/soma/video/Video$1;

    iget-object v6, v6, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-virtual {v6}, Lcom/smaato/soma/video/Video;->a()Z

    move-result v6

    iget-object v7, p0, Lcom/smaato/soma/video/Video$1$1;->a:Lcom/smaato/soma/video/Video$1;

    iget-object v7, v7, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-virtual {v7}, Lcom/smaato/soma/video/Video;->c()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/smaato/soma/video/c;-><init>(Landroid/content/Context;Lcom/smaato/soma/internal/d/c;ZLcom/smaato/soma/video/b;IZI)V

    sput-object v0, Lcom/smaato/soma/video/Video;->a:Lcom/smaato/soma/video/c;

    .line 370
    iget-object v0, p0, Lcom/smaato/soma/video/Video$1$1;->a:Lcom/smaato/soma/video/Video$1;

    iget-object v0, v0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v0}, Lcom/smaato/soma/video/Video;->a(Lcom/smaato/soma/video/Video;)Lcom/smaato/soma/video/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/smaato/soma/video/Video$1$1;->a:Lcom/smaato/soma/video/Video$1;

    iget-object v0, v0, Lcom/smaato/soma/video/Video$1;->b:Lcom/smaato/soma/video/Video;

    invoke-static {v0}, Lcom/smaato/soma/video/Video;->a(Lcom/smaato/soma/video/Video;)Lcom/smaato/soma/video/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/smaato/soma/video/b;->onReadyToShow()V

    .line 373
    :cond_1
    return-void
.end method
