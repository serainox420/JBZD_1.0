.class Lcom/apprupt/sdk/MRAIDView$21;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/apprupt/sdk/MRAIDView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$21;->b:Lcom/apprupt/sdk/MRAIDView;

    iput-object p2, p0, Lcom/apprupt/sdk/MRAIDView$21;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 780
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$21;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->b(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "BACKGROUND"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/apprupt/sdk/MRAIDView$21;->a:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 781
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$21;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v0}, Lcom/apprupt/sdk/MRAIDView;->f(Lcom/apprupt/sdk/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$21;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$21;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 793
    iget-object v1, p0, Lcom/apprupt/sdk/MRAIDView$21;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v1}, Lcom/apprupt/sdk/MRAIDView;->b(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "BACKGROUND i"

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/apprupt/sdk/Logger$log;->d([Ljava/lang/Object;)V

    .line 794
    iget-object v1, p0, Lcom/apprupt/sdk/MRAIDView$21;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v1}, Lcom/apprupt/sdk/MRAIDView;->n(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/adview/ExpandProperties;

    move-result-object v1

    .line 795
    monitor-enter v1

    .line 796
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/apprupt/sdk/adview/ExpandProperties;->a(I)V

    .line 797
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 798
    iget-object v1, p0, Lcom/apprupt/sdk/MRAIDView$21;->b:Lcom/apprupt/sdk/MRAIDView;

    invoke-static {v1}, Lcom/apprupt/sdk/MRAIDView;->h(Lcom/apprupt/sdk/MRAIDView;)Lcom/apprupt/sdk/CvAdWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/apprupt/sdk/CvAdWrapper;->a(I)V

    goto :goto_0

    .line 797
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 790
    :catch_0
    move-exception v0

    goto :goto_0
.end method
