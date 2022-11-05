.class Lcom/smaato/soma/bannerutilities/b$7;
.super Lcom/smaato/soma/l;
.source "BannerAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/b;->b(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/bannerutilities/a;

.field final synthetic b:Lcom/smaato/soma/j;

.field final synthetic c:Lcom/smaato/soma/bannerutilities/b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/b;Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/j;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/b$7;->c:Lcom/smaato/soma/bannerutilities/b;

    iput-object p2, p0, Lcom/smaato/soma/bannerutilities/b$7;->a:Lcom/smaato/soma/bannerutilities/a;

    iput-object p3, p0, Lcom/smaato/soma/bannerutilities/b$7;->b:Lcom/smaato/soma/j;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 255
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$7;->a:Lcom/smaato/soma/bannerutilities/a;

    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/smaato/soma/bannerutilities/b$7;->a:Lcom/smaato/soma/bannerutilities/a;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$7;->a:Lcom/smaato/soma/bannerutilities/a;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a;->e()Landroid/webkit/WebView;

    move-result-object v2

    .line 258
    if-eqz v2, :cond_3

    .line 259
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :try_start_1
    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 261
    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 262
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$7;->b:Lcom/smaato/soma/j;

    instance-of v0, v0, Lcom/smaato/soma/b/c;

    if-eqz v0, :cond_1

    .line 263
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    :cond_0
    :goto_0
    return-object v3

    .line 265
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$7;->c:Lcom/smaato/soma/bannerutilities/b;

    invoke-static {v0}, Lcom/smaato/soma/bannerutilities/b;->b(Lcom/smaato/soma/bannerutilities/b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$7;->b:Lcom/smaato/soma/j;

    instance-of v0, v0, Lcom/smaato/soma/BannerView;

    if-eqz v0, :cond_4

    .line 268
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$7;->b:Lcom/smaato/soma/j;

    check-cast v0, Lcom/smaato/soma/BannerView;

    invoke-virtual {v0}, Lcom/smaato/soma/BannerView;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$7;->b:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->e()V

    .line 277
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 279
    :cond_3
    :try_start_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 271
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/b$7;->b:Lcom/smaato/soma/j;

    invoke-virtual {v0}, Lcom/smaato/soma/j;->e()V

    goto :goto_1

    .line 277
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/b$7;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
