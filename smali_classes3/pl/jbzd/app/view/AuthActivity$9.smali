.class Lpl/jbzd/app/view/AuthActivity$9;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Lpl/jbzd/app/c/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/AuthActivity;->c(Lpl/jbzd/app/ui/view/dialog/ShareMenuDialog;Landroid/view/View;Lpl/jbzd/app/model/Media;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/AuthActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/AuthActivity;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lpl/jbzd/app/view/AuthActivity$9;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$9;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$9;->a:Lpl/jbzd/app/view/AuthActivity;

    new-instance v1, Lpl/jbzd/app/view/AuthActivity$9$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/AuthActivity$9$1;-><init>(Lpl/jbzd/app/view/AuthActivity$9;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 625
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$9;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$9;->a:Lpl/jbzd/app/view/AuthActivity;

    new-instance v1, Lpl/jbzd/app/view/AuthActivity$9$2;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/app/view/AuthActivity$9$2;-><init>(Lpl/jbzd/app/view/AuthActivity$9;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 639
    :cond_0
    return-void
.end method
