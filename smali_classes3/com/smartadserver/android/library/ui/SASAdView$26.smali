.class Lcom/smartadserver/android/library/ui/SASAdView$26;
.super Ljava/lang/Object;
.source "SASAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 3260
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$26;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$26;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3262
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$26;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3263
    monitor-enter p0

    .line 3264
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 3265
    monitor-exit p0

    .line 3266
    return-void

    .line 3265
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
