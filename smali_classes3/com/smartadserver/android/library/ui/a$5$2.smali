.class Lcom/smartadserver/android/library/ui/a$5$2;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a$5;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a$5;)V
    .locals 0

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$5$2;->a:Lcom/smartadserver/android/library/ui/a$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$2;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1453
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$2;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->f(Lcom/smartadserver/android/library/ui/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$5$2;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->s(Lcom/smartadserver/android/library/ui/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$5$2;->a:Lcom/smartadserver/android/library/ui/a$5;

    iget-object v2, v2, Lcom/smartadserver/android/library/ui/a$5;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/a;->f(Lcom/smartadserver/android/library/ui/a;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 1456
    :cond_0
    monitor-exit v1

    .line 1457
    return-void

    .line 1456
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
