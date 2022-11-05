.class Lcom/intentsoftware/addapptr/y$1;
.super Ljava/lang/Object;
.source "ReporterAPI14.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/y;->createActivityLifecycleCallback()Landroid/app/Application$ActivityLifecycleCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/y;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/y;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/intentsoftware/addapptr/y$1;->this$0:Lcom/intentsoftware/addapptr/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/intentsoftware/addapptr/y$1;->this$0:Lcom/intentsoftware/addapptr/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/y;->onPause(Z)V

    .line 64
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/intentsoftware/addapptr/y$1;->this$0:Lcom/intentsoftware/addapptr/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/intentsoftware/addapptr/y;->onResume(Z)V

    .line 59
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
