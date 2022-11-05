.class Lcom/smartadserver/android/library/ui/a$b$1;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a$b;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a$b;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$b$1;->a:Lcom/smartadserver/android/library/ui/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b$1;->a:Lcom/smartadserver/android/library/ui/a$b;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b$1;->a:Lcom/smartadserver/android/library/ui/a$b;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->f(Lcom/smartadserver/android/library/ui/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b$1;->a:Lcom/smartadserver/android/library/ui/a$b;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->f(Lcom/smartadserver/android/library/ui/a;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$b$1;->a:Lcom/smartadserver/android/library/ui/a$b;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$b;->c:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->f(Lcom/smartadserver/android/library/ui/a;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 301
    :cond_0
    monitor-exit v1

    .line 302
    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
