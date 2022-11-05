.class Lpl/jbzd/app/view/AuthActivity$2;
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
    .line 682
    iput-object p1, p0, Lpl/jbzd/app/view/AuthActivity$2;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$2;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$2;->a:Lpl/jbzd/app/view/AuthActivity;

    new-instance v1, Lpl/jbzd/app/view/AuthActivity$2$1;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/AuthActivity$2$1;-><init>(Lpl/jbzd/app/view/AuthActivity$2;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 695
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$2;->a:Lpl/jbzd/app/view/AuthActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/AuthActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lpl/jbzd/app/view/AuthActivity$2;->a:Lpl/jbzd/app/view/AuthActivity;

    new-instance v1, Lpl/jbzd/app/view/AuthActivity$2$2;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/app/view/AuthActivity$2$2;-><init>(Lpl/jbzd/app/view/AuthActivity$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 709
    :cond_0
    return-void
.end method
